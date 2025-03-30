import 'package:balancei_app/ui/utils/bottom_navigation/viewmodel/speed_dial_viewmodel.dart';
import 'package:balancei_app/ui/utils/common_radius.dart';
import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:balancei_app/ui/utils/extensions/custom_floating_action_button_location.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

enum BottomNavigationItem {
  home(value: 0, location: '/'),
  dashboard(value: 1, location: '/dashboard');

  final int value;
  final String location;

  const BottomNavigationItem({required this.value, required this.location});

  static BottomNavigationItem fromValue(int value) {
    return BottomNavigationItem.values.firstWhere(
      (element) => element.value == value,
      orElse: () => throw Exception('[BottomNavigationItem] Value not found'),
    );
  }

  static BottomNavigationItem fromLocation(String location) {
    return BottomNavigationItem.values.firstWhere(
      (element) => element.location == location,
      orElse: () =>
          throw Exception('[BottomNavigationItem] Location not found'),
    );
  }
}

class BottomNavigation extends ConsumerStatefulWidget {
  final Widget child;
  final double bottomNavBarHeight = 60;

  const BottomNavigation({super.key, required this.child});

  @override
  ConsumerState<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends ConsumerState<BottomNavigation> {
  late final viewModel = ref.read(speedDialViewModel.notifier);

  int _getCurrentIndex(BuildContext context) {
    final String currentLocation = GoRouterState.of(context).uri.path;

    return BottomNavigationItem.fromLocation(currentLocation).value;
  }

  @override
  Widget build(BuildContext context) {
    final bool showAdditionalButtons = ref.watch(speedDialViewModel);
    final double bottomNavBarHeight = widget.bottomNavBarHeight;
    return Stack(
      children: [
        Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            shape: CircleBorder(),
            mini: true,
            onPressed: viewModel.toggleAdditionalButtons,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          floatingActionButtonLocation: CustomFloatingActionButtonLocation(
            bottomNavBarHeight: bottomNavBarHeight,
            context: context,
          ),
          floatingActionButtonAnimator:
              FloatingActionButtonAnimator.noAnimation,
          body: Column(
            children: [
              Expanded(
                child: widget.child,
              ),
              SafeArea(
                child: Container(
                  height: bottomNavBarHeight,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(
                          alpha: 0.2,
                        ),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(0, -3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: CommonRadius.large,
                      topRight: CommonRadius.large,
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
                        final item = BottomNavigationItem.fromValue(value);

                        context.go(item.location);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (showAdditionalButtons)
          Positioned.fill(
            bottom: bottomNavBarHeight + MediaQuery.of(context).padding.bottom,
            child: GestureDetector(
              onTap: viewModel.toggleAdditionalButtons,
              child: Container(
                color: Colors.black.withValues(
                  alpha: 0.3,
                ),
              ),
            ),
          ),
        if (showAdditionalButtons)
          Positioned(
            bottom:
                bottomNavBarHeight + MediaQuery.of(context).padding.bottom + 10,
            right: 0,
            left: 0,
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildAdditionalButton(
                    icon: Icons.trending_up,
                    label: "Receita",
                    onPressed: viewModel.toggleAdditionalButtons,
                  ),
                  const SizedBox(width: CommonSpacing.extraLarge),
                  _buildAdditionalButton(
                    icon: Icons.trending_down,
                    label: "Gastos",
                    onPressed: viewModel.toggleAdditionalButtons,
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }

  Widget _buildAdditionalButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          heroTag: label,
          backgroundColor: Theme.of(context).primaryColor,
          mini: true,
          onPressed: onPressed,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: CommonSpacing.ultraSmall),
        Text(
          label,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
              ),
        ),
      ],
    );
  }
}
