import 'package:salmon_stats_app/api.dart';
import 'package:salmon_stats_app/model/all.dart';
import 'package:salmon_stats_app/store/database/all.dart';
import 'package:salmon_stats_app/store/database/salmon_result.dart';
import 'package:salmon_stats_app/store/global.dart';
import 'package:salmon_stats_app/ui/all.dart';
import 'package:salmon_stats_app/util/all.dart';

class _ResultsStore with ChangeNotifier {
  _ResultsStore(this._context, this._iksmStatus, this.pid);

  final BuildContext _context;
  final String pid;

  IksmStatus _iksmStatus;
  IksmStatus get iksmStatus => _iksmStatus;
  set iksmStatus(IksmStatus iksmStatus) {
    _iksmStatus = iksmStatus;
    notifyListeners();
  }

  final List<SalmonResult> _results = <SalmonResult>[];
  bool hasLoaded = false;
  bool _isLoadingFromDB = false;
  bool _reachedBottom = false;
  Object error;

  bool get hasError => error != null;

  Future<void> fetchResults() async {
    try {
      if (iksmStatus == IksmStatus.valid) {
        final SalmonResults results = await SplatnetAPIRepository(_context.read<GlobalStore>().cookieJar).fetchResults();
        error = null;
        _results
          ..clear()
          ..addAll(results.results);
      } else {
        await loadFromDB();
      }
    } catch (e) {
      error = e;
    }

    hasLoaded = true;
    notifyListeners();
  }

  Future<void> loadFromDB() async {
    if (_reachedBottom || _isLoadingFromDB) {
      return;
    }

    final int loadedUntil = _results.isEmpty ? null : _results.last.jobId;

    _isLoadingFromDB = true;

    try {
      final List<InternalSalmonResult> results = await SalmonResultRepository(
        DatabaseProvider.instance,
        pid,
      ).paginate(loadedUntil, paginationItemCount);
      _results.addAll(results.map((InternalSalmonResult result) => result.toSalmonResult()));
      _reachedBottom = results.isEmpty;
    } catch (e) {
      error = e;
    } finally {
      _isLoadingFromDB = false;

      notifyListeners();
    }
  }
}

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> with AutomaticKeepAliveClientMixin<ResultsPage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return FutureBuilderWrapper<IksmStatus>(
      future: context.select((GlobalStore store) => store.iksmStatusFuture),
      builder: (_, IksmStatus iksmStatus) => ChangeNotifierProvider<_ResultsStore>(
        create: (BuildContext context) => _ResultsStore(
          context,
          iksmStatus,
          context.read<GlobalStore>().profile.pid,
        )..fetchResults(),
        child: _ResultsList(_refreshIndicatorKey),
      ),
    );
  }
}

class _ResultsList extends StatelessWidget {
  const _ResultsList(this._refreshIndicatorKey);

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey;

  @override
  Widget build(BuildContext context) {
    final IksmStatus iksmStatus = context.select((_ResultsStore store) => store.iksmStatus);

    Widget makeRefreshable(Widget child) {
      return RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: () async {
          if (iksmStatus == IksmStatus.error) {
            context.read<_ResultsStore>().iksmStatus = await validateIksmSession(context.read<GlobalStore>().cookieJar);

            if (context.read<_ResultsStore>().iksmStatus != IksmStatus.valid) {
              return;
            }
          }

          return context.read<_ResultsStore>().fetchResults();
        },
        child: child,
      );
    }

    final _ResultsStore store = context.watch<_ResultsStore>();
    final List<SalmonResult> results = store._results;

    final bool isEmpty = results.isEmpty;
    final int latestUploadedJobId = context.select((GlobalStore store) => store.profile.jobId) ?? 0;
    final int latestJobId = isEmpty ? 0 : results?.first?.jobId ?? 0;
    final int oldestJobId = isEmpty ? 0 : results?.last?.jobId ?? 0;

    Widget body;

    final List<Widget> errorWidgets = <Widget>[
      if (iksmStatus == IksmStatus.expired) ...<Widget>[
        Center(child: ErrorText(S.of(context).iksmExpirationMessage)),
        RaisedButton(
          child: Text(S.of(context).iksmExpirationUpdateButtonLabel),
          onPressed: () => const EnterIksmPage(type: EnterIksmPageType.sessionTimeOut).push(context),
        ),
      ] else if (iksmStatus == IksmStatus.error)
        ErrorText(S.of(context).resultsFetchingError)
      else if (store.hasError)
        ErrorText(store.error.toString()),
    ];
    errorWidgets.addAll(<Widget>[
      if (errorWidgets.isNotEmpty && isEmpty) const Padding(padding: EdgeInsets.only(bottom: 8.0)),
      if (isEmpty) Text(S.of(context).noResultsFound),
    ]);

    if (store.hasLoaded) {
      body = makeRefreshable(
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) => SizedBox.fromSize(
            size: Size.fromHeight(constraints.maxHeight),
            child: NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification notification) {
                final ScrollMetrics metrics = notification.metrics;
                final bool onReachedBottom = metrics.maxScrollExtent >= 0 && metrics.pixels >= metrics.maxScrollExtent - 100;
                if (onReachedBottom) {
                  context.read<_ResultsStore>().loadFromDB();
                }

                return false;
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: PagePadding(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ...errorWidgets,
                      if (errorWidgets.isNotEmpty) const Padding(padding: EdgeInsets.only(bottom: 8.0)),
                      if (!isEmpty) _buildListView(context, results, latestUploadedJobId),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      body = const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).navResults),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.file_upload),
            onPressed: latestUploadedJobId >= latestJobId
                ? null
                : () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (_) => UploadResultsPage(
                          sinceId: oldestJobId > latestUploadedJobId ? oldestJobId : latestUploadedJobId + 1,
                          untilId: latestJobId,
                        ),
                      ),
                    );
                  },
          ),
        ],
      ),
      body: body,
    );
  }

  Widget _buildListView(BuildContext context, List<SalmonResult> results, int latestUploadedJobId) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: listTopPadding,
      itemBuilder: (_, int i) {
        final SalmonResult result = results[i];
        final bool hasUploaded = latestUploadedJobId >= result.jobId;

        return ListTile(
          contentPadding: const EdgeInsets.only(left: 8.0),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (_) => ResultPage(result),
            ),
          ),
          leading: ConstrainedBox(
            constraints: const BoxConstraints.tightFor(width: 48.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (result.jobResult.isClear)
                  Text(
                    S.of(context).clear,
                    style: successTextStyle,
                  )
                else
                  Text(
                    S.of(context).fail,
                    style: failTextStyle,
                  ),
                Text(result.jobId.toString()),
              ],
            ),
          ),
          title: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SpecialWeaponImage(result.myResult.special.id),
                  const Padding(padding: EdgeInsets.only(right: 8.0)),
                  ...result.myResult.weaponList.map((IdEntity i) => MainWeaponImage(i.id)),
                ],
              ),
              Row(
                children: <Widget>[
                  ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(width: 30.0),
                    child: Text('${result.gradePoint}'),
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(width: 20.0),
                    child: Text(result.myResult.goldenIkuraNum.toString(), style: const TextStyle(color: SalmonStatsColors.goldenEgg)),
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(width: 40.0),
                    child: Text(result.myResult.ikuraNum.toString(), style: const TextStyle(color: SalmonStatsColors.powerEgg)),
                  ),
                ].gapWith(const Padding(padding: EdgeInsets.only(right: 8.0))),
              ),
            ],
          ),
          trailing: hasUploaded
              ? IconButton(
                  icon: const Icon(FontAwesomeIcons.snowflake),
                  onPressed: () => _openInSalmonStats(context, result),
                )
              : IconButton(icon: const Icon(Icons.file_upload), disabledColor: Theme.of(context).iconTheme.color, onPressed: null),
        );
      },
      itemCount: results.length,
    );
  }

  Future<void> _openInSalmonStats(BuildContext context, SalmonResult result) async {
    final GlobalStore store = context.read<GlobalStore>();
    final SalmonResultRepository repository = SalmonResultRepository(DatabaseProvider.instance);
    final int salmonStatsId = (await repository.findOneOrFail(<String, dynamic>{
      'id': result.jobId,
      'pid': store.profile.pid,
    }))
        .salmonStatsId;

    store.getGlobalKey<HomePageState>().currentState.setPage<SalmonStatsPage>();
    store.getGlobalKey<SalmonStatsPageState>().currentState.showResult(salmonStatsId);
  }
}
