import 'package:flutter/material.dart';

class CustomFloatingActionButtonLocation extends FloatingActionButtonLocation {
  final double bottomNavBarHeight;
  final BuildContext context;

  CustomFloatingActionButtonLocation({
    required this.bottomNavBarHeight,
    required this.context,
  });

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double fabX = (scaffoldGeometry.scaffoldSize.width -
            scaffoldGeometry.floatingActionButtonSize.width) /
        2;

    final floatingActionButtonHeight =
        scaffoldGeometry.floatingActionButtonSize.height;

    final fabVerticalOffset =
        (bottomNavBarHeight - floatingActionButtonHeight) / 2;

    final double bottomSafeAreaInset =
        MediaQuery.of(context).viewPadding.bottom;

    final double fabY = scaffoldGeometry.scaffoldSize.height -
        floatingActionButtonHeight -
        scaffoldGeometry.minInsets.bottom -
        bottomSafeAreaInset -
        fabVerticalOffset;

    // final double fabY = screenHeight - floatingActionButtonHeight;
    return Offset(fabX, fabY);
  }
}
