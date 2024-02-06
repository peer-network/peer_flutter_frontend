import 'package:flutter/material.dart';
import 'package:peer_app/presentation/routing/base_route_guards.dart';
import 'package:peer_app/presentation/routing/routes/transitions.dart';

class BaseRoute<T> extends PageRouteBuilder<T> {
  final Widget page;

  final List<BaseRouteGuard> guards;
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)
      transitionsBuilderFunction;

  BaseRoute(this.page,
      //this.name,
      { //this.path,
      this.guards = const [],
      this.transitionsBuilderFunction = Transitions.noTransition})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder: transitionsBuilderFunction);
}
