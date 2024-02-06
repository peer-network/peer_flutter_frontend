import 'package:peer_app/presentation/routing/routes/base_route.dart';

abstract class BaseRouteGuard {
  bool onNavigation(BaseRoute route);
}
