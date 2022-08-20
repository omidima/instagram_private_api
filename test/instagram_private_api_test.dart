import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:instagram_private_api/instagram_private_api.dart';
import 'package:instagram_private_api/src/core/insta_state.dart';
import 'package:instagram_private_api/src/utilities/response_interceptor.dart';

Future<void> main() async {
  final env = Platform.environment;
  final username = env['IG_USERNAME'];
  final password = env['IG_PASSWORD'];
  final storage =
      FileStateStorage(stateFolder: Directory.current.path, username: username);

  if (await storage.exists()) {
    final client = InstaClient(
        state: InstaState.fromJson(jsonDecode(await storage.loadState())));
    final user = client.account.currentUser();
    print('user $user');
  } else {
    final client = InstaClient();
    client.request.httpClient.interceptors.add(ResponseInterceptor(
      client,
      (p0) {
        storage.saveState(jsonEncode(p0));
      },
    ));
    client.state.init();
    final user = client.account.login(username, password);
    print('user $user');
  }
}

mixin StateStorage {
  Future<bool> exists();

  Future<void> createState();

  Future<String> loadState();

  Future<void> saveState(String encodedState);
}

class FileStateStorage with StateStorage {
  File _stateFile;

  FileStateStorage({String username, String stateFolder = ''}) {
    _stateFile = File('$stateFolder/state_$username.json');
  }

  @override
  Future<void> createState() async => _stateFile.create(recursive: true);

  @override
  Future<String> loadState() async => _stateFile.readAsString();

  @override
  Future<void> saveState(String encodedState) async =>
      _stateFile.writeAsString(encodedState);

  @override
  Future<bool> exists() async => _stateFile.exists();
}

void jsonPrint(Object o) => print(jsonEncode(o));
