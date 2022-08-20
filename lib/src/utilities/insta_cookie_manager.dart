import 'dart:async';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:instagram_private_api/src/utilities/insta_cookie_jar.dart';

import 'insta_cookie.dart';

class InstaCookieManager extends Interceptor {
  /// Using this implementation, because Instagram sets a non-standard cookie

  /// Cookie manager for http requests。Learn more details about
  /// CookieJar please refer to [cookie_jar](https://github.com/flutterchina/cookie_jar)
  final InstaCookieJar cookieJar;

  static const invalidCookieValue = '_invalid_';

  /// Dart SDK will cause an exception When response cookie's value is empty,
  /// eg. 'Set-Cookie: session=; Path=/; Expires=Thu, 01 Jan 1970 00:00:00 GMT'
  ///
  /// This is a bug of Dart SDK: https://github.com/dart-lang/sdk/issues/35804
  /// So, we should normalize the cookie value before this bug is fixed.
  bool needNormalize = false;

  InstaCookieManager(this.cookieJar) {
    // Set `needNormalize` value by Duck test
    try {
      Cookie.fromSetCookieValue('k=;');
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      needNormalize = true;
    }
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final cookies = cookieJar.loadForRequest(Uri.parse('instagram.com'));
    final cookie = getCookies(cookies);
    if (cookie.isNotEmpty) options.headers[HttpHeaders.cookieHeader] = cookie;
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(response.data);
    _saveCookies(response);
    super.onResponse(response, handler);
  }

  @override
  onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) {
    _saveCookies(err.response);
    super.onError(err, handler);
  }

  FutureOr<dynamic> _saveCookies(Response response) {
    if (response != null && response.headers != null) {
      final cookies = response.headers[HttpHeaders.setCookieHeader];
      if (cookies != null) {
        if (needNormalize) {
          final _cookies = normalizeCookies(cookies);
          cookies
            ..clear()
            ..addAll(_cookies);
        }
        cookieJar.saveFromResponse(
          response.realUri,
          cookies.map((str) => InstaCookie.fromSetCookieValue(str)).toList(),
        );
      }
    }
  }

  static String getCookies(List<Cookie> cookies) =>
      cookies.map((cookie) => '${cookie.name}=${cookie.value}').join('; ');

  static List<String> normalizeCookies(List<String> cookies) {
    if (cookies != null) {
      const expires = ' Expires=Thu, 01 Jan 1970 00:00:00 GMT';
      return cookies.map((cookie) {
        final _cookie = cookie.split(';');
        final kv = _cookie.first?.split('=');
        if (kv != null && kv[1].isEmpty) {
          kv[1] = invalidCookieValue;
          _cookie[0] = kv.join('=');
          if (_cookie.length > 1) {
            var i = 1;
            while (i < _cookie.length) {
              if (_cookie[i].trim().toLowerCase().startsWith('expires')) {
                _cookie[i] = expires;
                break;
              }
              ++i;
            }
            if (i == _cookie.length) {
              _cookie.add(expires);
            }
          }
        }
        return _cookie.join(';');
      }).toList();
    }
    return [];
  }
}
