import 'package:peer_app/presentation/pages/login_page/login_page.dart';
import 'package:peer_app/presentation/pages/peer_page/peer_page.dart';
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
