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
          path: 'add-transfer',
          factory: $TransferRouterExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'create-category',
          factory: $CreateCategoryRouterExtension._fromState,
        ),
      ],
    );

extension $TransferRouterExtension on TransferRouter {
  static TransferRouter _fromState(GoRouterState state) => TransferRouter(
        type: _$TransactionTypeEnumEnumMap
            ._$fromName(state.uri.queryParameters['type']!),
      );

  String get location => GoRouteData.$location(
        '/home/add-transfer',
        queryParams: {
          'type': _$TransactionTypeEnumEnumMap[type],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$TransactionTypeEnumEnumMap = {
  TransactionTypeEnum.income: 'income',
  TransactionTypeEnum.expense: 'expense',
  TransactionTypeEnum.balance: 'balance',
};

extension $CreateCategoryRouterExtension on CreateCategoryRouter {
  static CreateCategoryRouter _fromState(GoRouterState state) =>
      CreateCategoryRouter();

  String get location => GoRouteData.$location(
        '/home/create-category',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}
