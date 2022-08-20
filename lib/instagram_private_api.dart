/// Support for doing something awesome.
///
/// More dartdocs go here.
library instagram_private_api;

import 'dart:convert';
import 'dart:io';

import 'package:instagram_private_api/src/core/constants.dart';
import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/core/insta_state.dart';
import 'package:instagram_private_api/src/utilities/insta_cookie_manager.dart';

import 'src/utilities/insta_cookie_jar.dart';
import 'src/utilities/response_interceptor.dart';

export 'package:instagram_private_api/src/core/insta_client.dart';

// TODO: Export any libraries intended for clients of this package.
Future<void> main() async {
  // var systemTempDir = Directory.current.path;
  var storage = FileStateStorage(
      stateFolder: Directory.current.path, username: "omidsfvn");

  var username = "p_o.h.hadidy";
  var password = "omid51172123";

  if (await storage.exists()) {
    var client = InstaClient(
        state: InstaState.fromJson(jsonDecode(await storage.loadState())));
    var user = client.account.currentUser();
    print("user $user");
  } else {
    var client = InstaClient();
    client.request.httpClient.interceptors.add(ResponseInterceptor(
      client,
      (p0) {
        storage.saveState(jsonEncode(p0));
      },
    ));
    client.state.init();
    var user = client.account.login(username, password);
    print("user $user");
  }
}

class FileStateStorage {
  File _stateFile;

  FileStateStorage({String username, String stateFolder = ''}) {
    _stateFile = File('$stateFolder/state_$username.json');
  }

  Future<void> createState() async => await _stateFile.create(recursive: true);

  @override
  Future<String> loadState() async => await _stateFile.readAsString();

  @override
  Future<void> saveState(String encodedState) async =>
      await _stateFile.writeAsString(encodedState);

  @override
  Future<bool> exists() async => await _stateFile.exists();
}
