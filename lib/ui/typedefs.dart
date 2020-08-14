import 'package:salmon_stats_app/ui/all.dart';

typedef LabelBuilder = String Function(BuildContext context);

// https://github.com/dart-lang/language/issues/356
// For the time being, this is just a marker interface.
abstract class PushablePage<T extends Widget> {
//  static Future<void> push(BuildContext context) {
//    throw UnimplementedError();
//  }
}

mixin SharablePageMixin {
  Future<String> shareText(BuildContext context);

  Widget buildShareButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.share),
      onPressed: () async {
        Share.share(await shareText(context));
      },
    );
  }
}

enum IksmStatus {
  expired, // When NSO API returns 403 error.
  error, // Likely because the device is offline.
  valid, // When NSO API returns 200.
}
