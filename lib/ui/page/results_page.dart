import 'package:flutter/material.dart';
import 'package:salmonia_android/model/all.dart';
import 'package:salmonia_android/repository/splatnet_repository.dart';
import 'package:salmonia_android/store/global.dart';
import 'package:salmonia_android/ui/all.dart';

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> with AutomaticKeepAliveClientMixin<ResultsPage> {
  Future<SalmonResults> _resultsFuture;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    _resultsFuture = SplatnetAPIRepository(GlobalStore.cookieJar).fetchResults();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).navResults)),
      body: FutureBuilderWrapper<SalmonResults>(
        future: _resultsFuture,
        builder: (_, SalmonResults results) {
          return ListView.builder(
            itemBuilder: (_, int i) {
              final SalmonResult result = results.results[i];

              return Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('${result.jobId}'),
                      Text(result.jobResult.isClear ? S.of(context).clear : S.of(context).fail),
                    ],
                  ),
                ],
              );
            },
            itemCount: results.results.length,
          );
        },
        errorBuilder: (_, __) => ErrorText(S.of(context).resultsFetchingError),
      ),
    );
  }
}
