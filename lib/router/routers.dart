import 'package:balancei_app/domain/enums/transaction_type_enum.dart';
import 'package:balancei_app/router/category/create_category_router.dart';
import 'package:balancei_app/router/transfer/add_transfer_router.dart';
import 'package:balancei_app/ui/dashboard/dashboard_screen.dart';
import 'package:balancei_app/ui/home/home_screen.dart';
import 'package:balancei_app/ui/utils/bottom_navigation/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routers.g.dart';

final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<BottomNavigationShellRoute>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeRoute>(path: '/home'),
    TypedGoRoute<DashboardRoute>(
      path: '/dashboard',
    ),
  ],
)
class BottomNavigationShellRoute extends ShellRouteData {
  const BottomNavigationShellRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return BottomNavigation(child: navigator);
  }
}

@TypedGoRoute<HomeRoute>(
  path: '/home',
  routes: <TypedRoute<RouteData>>[
    transferRoute,
    createCategoryRoute,
  ],
)
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

class DashboardRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DashboardScreen();
}

class AppRouter {
  static final _router = GoRouter(
    initialLocation: HomeRoute().location,
    routes: $appRoutes,
  );

  static GoRouter get router => _router;
}
