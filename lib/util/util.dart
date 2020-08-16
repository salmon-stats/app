import 'dart:convert';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:salmon_stats_app/config.dart';
import 'package:salmon_stats_app/repository/splatnet_repository.dart';
import 'package:salmon_stats_app/ui/typedefs.dart';

String _capitalizeFirstLetter(String text) {
  return text[0].toUpperCase() + text.substring(1);
}

CookieJar createCookieJar(String iksmSession) {
  final CookieJar cookieJar = CookieJar();
  cookieJar.saveFromResponse(Uri.parse(Config.SPLATNET_ORIGIN), <Cookie>[
    Cookie('iksm_session', iksmSession),
  ]);

  return cookieJar;
}

T Function(T, T) foldSum<T extends num>() {
  return (T sum, T value) => sum + value as T;
}

Map<String, dynamic> jsonDecodeMap(String source) {
  return jsonDecode(source) as Map<String, dynamic>;
}

String toCamelCase(String text) {
  return text
      .split('-')
      .asMap()
      .entries
      .map<String>(
        (MapEntry<int, String> entry) => entry.key == 0 ? entry.value : _capitalizeFirstLetter(entry.value),
      )
      .join('');
}

Future<IksmStatus> validateIksmSession(CookieJar cookieJar) {
  return SplatnetAPIRepository(cookieJar)
      .fetchNSAId()
      .then(
        (_) => IksmStatus.valid,
      )
      .catchError(
        (dynamic _) => IksmStatus.expired,
        test: (dynamic error) => error is DioError && error.response?.statusCode == 403,
      )
      .catchError(
        (dynamic _) => IksmStatus.error,
      );
}
