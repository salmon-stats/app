import 'package:salmon_stats_app/config.dart';
import 'package:salmon_stats_app/ui/all.dart';

class SalmonStatsPage extends StatefulWidget {
  const SalmonStatsPage({Key key}) : super(key: key);

  @override
  SalmonStatsPageState createState() => SalmonStatsPageState();
}

class SalmonStatsPageState extends State<SalmonStatsPage> with AutomaticKeepAliveClientMixin<SalmonStatsPage>, SharablePageMixin {
  WebViewController _controller;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        // title: , // TODO: Add page title
        actions: <Widget>[
          buildShareButton(context),
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) => _controller = controller,
        initialUrl: Config.SALMON_STATS_URL,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }

  @override
  Future<String> shareText(BuildContext context) async {
    final String url = await _controller.currentUrl();

    return url.contains(Config.SALMON_STATS_URL) ? S.of(context).salmonStatsSharingText(url) : url;
  }

  Future<bool> requestGoBack() {
    final Future<bool> didGoBack = _controller.canGoBack();
    _controller.goBack();

    return didGoBack;
  }

  Future<void> showUserPage(String pid) {
    return _controller.loadUrl('${Config.SALMON_STATS_URL}/players/$pid');
  }

  Future<void> showResult(int id) {
    return _controller.loadUrl('${Config.SALMON_STATS_URL}/results/$id');
  }
}
