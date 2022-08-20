# instagram_private_api

*there's currently no pub-package, so you'll have to build it yourself*
**Current version: 0.0.1 (somewhat early alpha)**

This library is heavily influenced by dilame's [instagram-private-api](https://github.com/dilame/instagram-private-api).
The basic structure is very similar to it.

# Usage
 ```dart
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
```

# Storage model example
```dart

// base storage mixin
mixin StateStorage {
  FutureOr<bool> exists();

  FutureOr<void> createState();

  FutureOr<String> loadState();

  FutureOr<void> saveState(String encodedState);
}

/// An example state-storage
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
```