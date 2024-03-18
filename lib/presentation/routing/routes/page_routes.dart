import 'package:peer_app/data/models/chat_contact_model.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/chat_contacts_page.dart';
import 'package:peer_app/presentation/pages/create_image_post_page/create_image_post_page.dart';
import 'package:peer_app/presentation/pages/create_post_page/create_post_page.dart';
import 'package:peer_app/presentation/pages/login_page/login_page.dart';
import 'package:peer_app/presentation/pages/peer_page/peer_page.dart';
import 'package:peer_app/presentation/pages/profile_pages/user_profile_page/user_profile_page.dart';
import 'package:peer_app/presentation/pages/registration_page/registration_page.dart';
import 'package:peer_app/presentation/pages/single_chat_page/chat_page.dart';
import 'package:peer_app/presentation/routing/routes/base_route.dart';

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
  ChatPageRoute(ChatContactModel chatContact)
      : super(
          ChatPage(chatContact: chatContact),
        );
}

class UserProfilePageRoute extends BaseRoute {
  UserProfilePageRoute(String userId)
      : super(
          UserProfilePage(userId: userId),
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

//CreateImagePostPage
class CreateImagePostPageRoute extends BaseRoute {
  CreateImagePostPageRoute()
      : super(
          const CreateImagePostPage(),
          guards: [],
        );
}
