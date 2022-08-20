# instagram_private_api

*there's currently no pub-package, so you'll have to build it yourself*
**Current version: 0.0.1 (somewhat early alpha)**

This library is heavily influenced by dilame's [instagram-private-api](https://github.com/dilame/instagram-private-api).
The basic structure is very similar to it.

# Table of Contents

- [Installing](#Installing)
- [Getting Started](#Getting_Started)
    - [sample storage model](##sample_storage_model)
    - [sample storage model](##sample_of_hive_model)
- [Document](#Document)

# Installing
this package not published in the pub.dev so for using this, you can import to the `pubspec.yaml` to your project.
```yaml
dependencies:
...

  instagram_api:
    git:
      url: https://github.com/omidima/instagram_api.git
      ref: master # publish version branch 
```

# Getting_Started

when login user to instagram account for login back without using user/pass and use cookie data, you should save
cookies to file or a database. (** for using database recommended hive database **)

## sample_storage_model
> sample of storage class -> storage.dart
```dart
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

> main.dart
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

## sample_of_hive_model
> main.dart
```dart
const String storageName = 'instagram-cookies';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(storageName);
  runApp(const MyApp());
}
```

> instagram_api.dart
```dart
class ClassName {
  void main() async{
    final username = "username";
    final password = "password";
    
    var storage = Hive.box(storageName);
    if (storage.get(username) != null) {
      final client = InstaClient(
          state: InstaState.fromJson(storage.get(username)));

      final user = client.account.currentUser();
      print('user $user');

    } else {
      final client = InstaClient();

      client.request.httpClient.interceptors.add(ResponseInterceptor(
        client,
        (cookie) {
          storage.put(username, cookie);
        },
      ));
      client.state.init();

      final user = client.account.login(username, password);
      print('user $user');
    }
  }
}
```


# Document
for read document and learn more how about use to this package visit here [instagram-private-api](https://github.com/Nerixyz/instagram_private_api).

# More
for learn more about classes read here. [index class docs](https://github.com/Nerixyz/instagram-private-api/blob/b3351b902b5c186e850cc39c39cb734a370af32d/docs/modules/index.md)
