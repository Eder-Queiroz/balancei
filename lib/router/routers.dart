import 'package:balancei_app/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routers.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
  
}

class AppRouter {

  static final _router = GoRouter(
    initialLocation: HomeRoute().location,
    routes: $appRoutes,
  );

  static GoRouter get router => _router;

}