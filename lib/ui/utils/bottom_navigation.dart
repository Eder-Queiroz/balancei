import 'package:balancei_app/router/routers.dart';
import 'package:balancei_app/ui/utils/commom_radius.dart';
import 'package:balancei_app/ui/utils/extensions/custom_floating_action_button_location.dart.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigation extends StatelessWidget {
  final Widget child;
  final double bottomNavBarHeight = 60;

  const BottomNavigation({super.key, required this.child});

  int _getCurrentIndex(BuildContext context) {
    final String currentLocation = GoRouterState.of(context).uri.path;

    if (currentLocation.startsWith(DashboardRoute().location)) {
      return 1;
    }

    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        shape: CircleBorder(),
        mini: true,
        onPressed: () {
          return;
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: CustomFloatingActionButtonLocation(
        bottomNavBarHeight,
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.noAnimation,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: child,
            ),
            Container(
              height: bottomNavBarHeight,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(
                      alpha: 0.2,
                    ),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: Offset(0, -3), // Sombra na parte superior
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: CommomRadius.large,
                  topRight: CommomRadius.large,
                ),
                child: BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined),
                      label: 'Início',
                      activeIcon: Icon(Icons.home_rounded),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.dashboard_outlined),
                      label: 'Dashboard',
                      activeIcon: Icon(Icons.dashboard_rounded),
                    ),
                  ],
                  elevation: 0,
                  backgroundColor: Colors.white,
                  currentIndex: _getCurrentIndex(context),
                  onTap: (value) {
                    switch (value) {
                      case 0:
                        HomeRoute().go(context);
                        break;
                      case 1:
                        DashboardRoute().go(context);
                        break;
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
