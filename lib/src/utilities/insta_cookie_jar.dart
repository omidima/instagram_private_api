import 'dart:convert';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:instagram_private_api/src/core/constants.dart';
import 'package:instagram_private_api/src/utilities/insta_cookie.dart';

class InstaCookieJar {
  /// using this to avoid the validation

  /// [ignoreExpires]: save/load even cookies that have expired.
  InstaCookieJar({
    this.ignoreExpires = false,
    initialCookies,
  }) {
    _domains = initialCookies ??
        <Map<String, Map<String, Map<String, SerializableInstaCookie>>>>[
          <String, Map<String, Map<String, SerializableInstaCookie>>>{},
          <String, Map<String, Map<String, SerializableInstaCookie>>>{}
        ];
  }

  /// A array to save cookies.
  ///
  /// [domains[0]] save the cookies with "domain" attribute.
  /// These cookie usually need to be shared among multiple domains.
  ///
  /// [domains[1]] save the cookies without "domain" attribute.
  /// These cookies are private for each host name.
  ///
  List<
          Map<
              String, //domain
              Map<
                  String, //path
                  Map<
                      String, //cookie name
                      SerializableInstaCookie //cookie
                      >>>> _domains =
      <Map<String, Map<String, Map<String, SerializableInstaCookie>>>>[
    <String, Map<String, Map<String, SerializableInstaCookie>>>{},
    <String, Map<String, Map<String, SerializableInstaCookie>>>{}
  ];

  factory InstaCookieJar.fromJson(Map<String, dynamic> json) => InstaCookieJar(
      ignoreExpires: json['ignoreExpires'] ?? false,
      initialCookies: json['domains']
          .map((domain) => domain
              .map((key1, map1) => MapEntry(
                  key1,
                  map1
                      .map((key2, map2) => MapEntry(
                          key2,
                          map2
                              .map((key3, value) => MapEntry(key3,
                                  SerializableInstaCookie.fromJson(value)))
                              .cast<String, SerializableInstaCookie>()))
                      .cast<String, Map<String, SerializableInstaCookie>>()))
              .cast<String, Map<String, Map<String, SerializableInstaCookie>>>())
          .toList()
          .cast<Map<String, Map<String, Map<String, SerializableInstaCookie>>>>()); // ignore: lines_longer_than_80_chars

  Map<String, dynamic> toJson() => {
        'ignoreExpires': ignoreExpires,
        'domains': _domains,
      };

  List<Map<String, Map<String, Map<String, SerializableInstaCookie>>>>
      get domains => _domains;

  @override
  List<Cookie> loadForRequest(Uri uri) {
    final List<Cookie> list = <Cookie>[];
    // Load cookies without "domain" attribute, include port.
    for (final String domain in domains[0].keys) {
      if (Constants.igHostUrl == domain) {
        var cookies = domains[0][Constants.igHostUrl]?['/'];
        cookies?.forEach((key, value) {
          list.add(value.cookie!);
        });
      }
    }
    // Load cookies with "domain" attribute, Ignore port.
    domains[0].forEach((domain, cookies) {
      if (uri.host.contains(domain)) {
        cookies.forEach((path, values) {
          if (Constants.igHostUrl.toLowerCase().contains(path)) {
            values.forEach((key, v) {
              if (_check(uri.scheme, v)) {
                list.add(v.cookie!);
              }
            });
          }
        });
      }
    });
    return list;
  }

  @override
  void saveFromResponse(Uri uri, List<Cookie> cookies) {
    for (final Cookie cookie in cookies) {
      String domain = cookie.domain?? Constants.igHostUrl;
      String path;
      int index = 0;
      // Save cookies with "domain" attribute
      if (domain != null) {
        if (domain.startsWith('.')) {
          domain = domain.substring(1);
        }
        path = cookie.path ?? '/';
      } else {
        index = 1;
        // Save cookies without "domain" attribute
        path = cookie.path ?? (uri.path.isEmpty ? '/' : uri.path);
        domain = uri.host;
      }
      Map<String, Map<String, dynamic>> mapDomain =
          domains[index][domain] ?? <String, Map<String, dynamic>>{};
      mapDomain = mapDomain.cast<String, Map<String, dynamic>>();

      final Map<String, dynamic> map = mapDomain[path] ?? <String, dynamic>{};
      map[cookie.name] = SerializableInstaCookie(cookie);
      if (_isExpired(map[cookie.name])) {
        map.remove(cookie.name);
      }
      mapDomain[path] = map.cast<String, SerializableInstaCookie>();
      domains[index][domain] =
          mapDomain.cast<String, Map<String, SerializableInstaCookie>>();
    }
  }

  /// Delete cookies for specified [uri].
  /// This API will delete all cookies
  /// for the `uri.host`, it will ignored the `uri.path`.
  ///
  /// [withDomainSharedCookie] `true` will delete the domain-shared cookies.
  void delete(Uri uri, [bool withDomainSharedCookie = false]) {
    final String host = uri.host;
    domains[1].remove(host);
    if (withDomainSharedCookie) {
      domains[0].removeWhere((domain, v) => uri.host.contains(domain));
    }
  }

  /// Delete all cookies in RAM
  void deleteAll() {
    domains[0].clear();
    domains[1].clear();
  }

  bool _isExpired(SerializableInstaCookie cookie) =>
      ignoreExpires ? false : cookie.isExpired();

  bool _check(String scheme, SerializableInstaCookie cookie) =>
      cookie.cookie!.secure && scheme == 'https' || !_isExpired(cookie);

  @override
  final bool ignoreExpires;
}
