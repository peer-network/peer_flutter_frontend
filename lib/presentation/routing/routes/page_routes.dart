import 'package:peer_app/presentation/pages/chat_contacts_page/chat_contacts_page.dart';
import 'package:peer_app/presentation/pages/login_page/login_page.dart';
import 'package:peer_app/presentation/pages/peer_page/peer_page.dart';
import 'package:peer_app/presentation/pages/registration_page/registration_page.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_page.dart';
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
          const ContactsPage(),
          guards: [],
        );
}

class ChatPageRoute extends BaseRoute {
  ChatPageRoute(String chatId)
      : super(
          ChatPage(chatId: chatId),
          guards: [],
        );
}
