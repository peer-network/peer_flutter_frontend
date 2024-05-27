import 'package:peer_app/data/models/chat_model.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/chat_contacts_page.dart';
import 'package:peer_app/presentation/pages/create_post_page/create_post_page.dart';
import 'package:peer_app/presentation/pages/login_page/login_page.dart';
import 'package:peer_app/presentation/pages/peer_page/peer_page.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/own_profile_page.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/transfer_tokens/recipient_list_page.dart';
import 'package:peer_app/presentation/pages/profile_pages/user_profile_page/user_profile_page.dart';
import 'package:peer_app/presentation/pages/registration_page/registration_page.dart';
import 'package:peer_app/presentation/pages/share_post/share_post_page.dart';
import 'package:peer_app/presentation/pages/share_post_contacts/share_post_contacts_page.dart';
import 'package:peer_app/presentation/pages/single_chat_page/chat_page.dart';
import 'package:peer_app/presentation/routing/routes/base_route.dart';
import 'package:peer_app/presentation/routing/routes/transitions.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailed_image_page/detailed_image_page.dart';

class LoginPageRoute extends BaseRoute {
  LoginPageRoute()
      : super(
          const LoginPage(),
          guards: [],
        );
}

class PeerPageRoute extends BaseRoute {
  PeerPageRoute()
      : super(
          const PeerPage(),
          guards: [],
        );
}

class RegistrationPageRoute extends BaseRoute {
  RegistrationPageRoute()
      : super(
          const RegistrationPage(),
          guards: [],
        );
}

class ChatContactsPageRoute extends BaseRoute {
  ChatContactsPageRoute()
      : super(
          const ChatContactsPage(),
          guards: [],
        );
}

class ChatPageRoute extends BaseRoute {
  ChatPageRoute(ChatModel chatContact)
      : super(
          ChatPage(chat: chatContact),
        );
}

class UserProfilePageRoute extends BaseRoute {
  UserProfilePageRoute(String userId)
      : super(
          UserProfilePage(userId: userId),
          guards: [],
        );
}

class OwnProfilePageRoute extends BaseRoute {
  OwnProfilePageRoute()
      : super(
          const OwnProfilePage(),
          guards: [],
        );
}

class RecipientListPageRoute extends BaseRoute {
  RecipientListPageRoute()
      : super(
          const RecipientListPage(),
          transitionsBuilderFunction: Transitions.slideBottom,
          guards: [],
        );
}

class CreatePostPageRoute extends BaseRoute {
  CreatePostPageRoute()
      : super(
          const CreatePostPage(),
          guards: [],
        );
}

class SharePostContactsRoute extends BaseRoute {
  SharePostContactsRoute(PostModel feed)
      : super(
          SharePostContactsPage(feed: feed),
          guards: [],
        );
}

class SharePostRoute extends BaseRoute {
  SharePostRoute(PostModel feed, Set<String> activeContacts)
      : super(
          SharePostPage(feed: feed, activeContacts: activeContacts),
          guards: [],
        );
}

class DetailedImagePageRoute extends BaseRoute {
  DetailedImagePageRoute(PostModel post)
      : super(
          DetailedImagePage(post: post),
          guards: [],
        );
}
