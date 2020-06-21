// ignore_for_file: non_constant_identifier_names

// ignore: avoid_classes_with_only_static_members
class Config {
  static Map<String, dynamic> env;

  static String get DEV_IKSM_SESSION => env['DEV_IKSM_SESSION'];
  static String get DEV_SALMON_STATS_API_TOKEN => env['DEV_SALMON_STATS_API_TOKEN'];

  static String get SALMON_STATS_API_ORIGIN => env['SALMON_STATS_API_ORIGIN'];
  static String get SALMON_STATS_URL => env['SALMON_STATS_URL'];
  static const String SALMON_IMAGE_BASE_PATH = 'https://splatoon-stats-api.yuki.games/static/images';

  // Splatnet related configurations
  static const String SPLATNET_ORIGIN = 'https://app.splatoon2.nintendo.net';
  static const String SPLATNET_API_ORIGIN = '$SPLATNET_ORIGIN/api';
  static const String SPLATNET_USER_AGENT = 'OnlineLounge/1.6.1.2 NASDKAPI Android';
}