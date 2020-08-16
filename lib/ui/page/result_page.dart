import 'package:salmon_stats_app/api.dart';
import 'package:salmon_stats_app/model/all.dart';
import 'package:salmon_stats_app/store/global.dart';
import 'package:salmon_stats_app/ui/all.dart';
import 'package:salmon_stats_app/util/all.dart';

class ResultPage extends StatefulWidget {
  const ResultPage(this.summary);

  final SalmonResult summary;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> with SharablePageMixin {
  Future<SalmonResult> _resultFuture;

  @override
  void initState() {
    super.initState();

    _resultFuture = SplatnetAPIRepository(context.read<GlobalStore>().cookieJar).fetchResult(widget.summary.jobId);
  }

  @override
  Widget build(BuildContext context) {
    final GlobalStore store = context.watch<GlobalStore>();

    final Widget body = FutureBuilderWrapper<SalmonResult>(
      future: _resultFuture,
      initialData: widget.summary,
      builder: (_, SalmonResult result) {
        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: <Widget>[
              Text(result.jobId.toString()),
              Text(result.playDate.toIso8601String()),
              Text(result.grade.idStr),
              Text(result.gradePoint.toString()),
              Text('KP' + result.kumaPoint.toString()),
              Text('jobRate' + result.jobRate.toString()),
              Text('JobScore' + result.jobScore.toString()),
              Text(result.goldenEggs.toString(), style: goldEggTextStyle),
              Text(result.powerEggs.toString(), style: powerEggTextStyle),
              _buildPlayerResults(context, result),
              if (result.waveDetails != null) _buildWaveDetails(context, result),
              Table(
                children: <TableRow>[
                  for (final MapEntry<String, CountEntity> entry in result.bossCounts.entries.sortBy<num>((MapEntry<String, CountEntity> entry) => int.parse(entry.key)).where((MapEntry<String, CountEntity> count) => count.value.count > 0))
                    TableRow(
                      children: <Widget>[
                        BossImage(int.parse(entry.key)),
                        Text(S.of(context).bossName(int.parse(entry.key))),
                        Text(entry.value.count.toString()),
                        Text(result.myResult.bossKillCounts[entry.key].count.toString()),
                      ],
                    ),
                ],
              ),
            ],
          ),
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          buildShareButton(context),
        ],
      ),
      body: PagePadding(child: body),
    );
  }

  @override
  Future<String> shareText(BuildContext context) {
    return Future<String>.value('a');
  }

  Widget _buildWaveDetails(BuildContext context, SalmonResult result) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: result.waveDetails
            .map<Widget>((WaveDetails wave) => ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: (constraints.maxWidth - 16) / 3),
                  child: _WaveCard(result, wave),
                ))
            .gapWith(const Padding(padding: EdgeInsets.only(right: 8.0)))
            .toList(),
      ),
    );
  }

  Widget _buildPlayerResults(BuildContext context, SalmonResult result) {
    return Column(
      children: <Widget>[
        for (final ResultDetails player in <ResultDetails>[result.myResult, if (result.otherResults != null) ...result.otherResults])
          Row(
            children: <Widget>[
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: context.textTheme.bodyText2.fontSize * 10.0),
                child: Text(player.name),
              ),
              SpecialWeaponImage(player.special.id),
              for (final IdEntity weapon in player.weaponList) MainWeaponImage(weapon.id),
              Text(
                player.goldenIkuraNum.toString(),
                style: goldEggTextStyle,
              ),
              Text(
                player.ikuraNum.toString(),
                style: powerEggTextStyle,
              ),
              Text('+' + player.helpCount.toString()),
              Text('-' + player.deadCount.toString()),
              Text('B' + player.bossKillCounts.values.map((CountEntity count) => count.count).fold<int>(0, foldSum()).toString()),
            ],
          ),
      ],
    );
  }
}

class _WaveCard extends StatelessWidget {
  const _WaveCard(this.result, this.wave);

  final SalmonResult result;
  final WaveDetails wave;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(S.of(context).eventName(wave.event)),
        Text(S.of(context).waterLevelName(wave.water)),
        Row(
          children: <Widget>[
            Text(
              wave.goldenIkuraNum.toString(),
              style: goldEggTextStyle,
            ),
            Text(wave.goldenIkuraPopNum.toString()),
          ],
        ),
        Text(
          wave.ikuraNum.toString(),
          style: powerEggTextStyle,
        ),
      ],
    );
  }
}
