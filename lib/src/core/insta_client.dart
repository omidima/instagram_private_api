import 'package:instagram_private_api/src/core/insta_request.dart';
import 'package:instagram_private_api/src/repositories/account_repository.dart';
import 'package:instagram_private_api/src/repositories/direct_repository.dart';
import 'package:instagram_private_api/src/repositories/friendships_repository.dart';
import 'package:instagram_private_api/src/repositories/fundraiser_repository.dart';
import 'package:instagram_private_api/src/repositories/highlights_repository.dart';
import 'package:instagram_private_api/src/repositories/launcher_repository.dart';
import 'package:instagram_private_api/src/repositories/location_repository.dart';
import 'package:instagram_private_api/src/repositories/media_repository.dart';
import 'package:instagram_private_api/src/repositories/news_repository.dart';
import 'package:instagram_private_api/src/repositories/qe_repository.dart';
import 'package:instagram_private_api/src/repositories/upload_repository.dart';
import 'package:instagram_private_api/src/repositories/users_repository.dart';
import 'package:instagram_private_api/src/services/publish_service.dart';

import '../utilities/insta_cookie_jar.dart';
import '../utilities/insta_cookie_manager.dart';
import 'insta_feed_factory.dart';
import 'insta_state.dart';

class InstaClient {
  InstaState state;
  late InstaRequest request;
  late InstaCookieJar jar;

  late InstaFeedFactory feed;

  /// repositories - endpoint-collections
  late AccountRepository account;
  late LauncherRepository launcher;
  late QeRepository qe;
  late MediaRepository media;
  late NewsRepository news;
  late UsersRepository users;
  late FriendshipsRepository friendships;
  late HighlightsRepository highlights;
  late UploadRepository upload;
  late LocationRepository location;
  late FundraiserRepository fundraiser;
  late DirectRepository direct;

  /// services
  late PublishService publish;

  InstaClient({InstaState? state}) : state = state ?? InstaState() {
    request = InstaRequest(client: this);
    jar = InstaCookieJar();
    request.httpClient.interceptors.add(InstaCookieManager(jar));

    feed = InstaFeedFactory(this);
    account = AccountRepository(this);
    launcher = LauncherRepository(this);
    qe = QeRepository(this);
    media = MediaRepository(this);
    news = NewsRepository(this);
    users = UsersRepository(this);
    friendships = FriendshipsRepository(this);
    highlights = HighlightsRepository(this);
    upload = UploadRepository(this);
    location = LocationRepository(this);
    fundraiser = FundraiserRepository(this);
    direct = DirectRepository(this);

    publish = PublishService(this);
  }
}
