// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routers.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $bottomNavigationShellRoute,
      $homeRoute,
    ];

RouteBase get $bottomNavigationShellRoute => ShellRouteData.$route(
      navigatorKey: BottomNavigationShellRoute.$navigatorKey,
      factory: $BottomNavigationShellRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/home',
          factory: $HomeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/dashboard',
          factory: $DashboardRouteExtension._fromState,
        ),
      ],
    );

extension $BottomNavigationShellRouteExtension on BottomNavigationShellRoute {
  static BottomNavigationShellRoute _fromState(GoRouterState state) =>
      const BottomNavigationShellRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DashboardRouteExtension on DashboardRoute {
  static DashboardRoute _fromState(GoRouterState state) => DashboardRoute();

  String get location => GoRouteData.$location(
        '/dashboard',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/home',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'add-incoming',
          factory: $IncomingRouterExtension._fromState,
        ),
      ],
    );

extension $IncomingRouterExtension on IncomingRouter {
  static IncomingRouter _fromState(GoRouterState state) => IncomingRouter();

  String get location => GoRouteData.$location(
        '/home/add-incoming',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
