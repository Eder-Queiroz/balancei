import 'package:flutter/material.dart';

class CustomFloatingActionButtonLocation extends FloatingActionButtonLocation {
  final double bottomNavBarHeight;

  CustomFloatingActionButtonLocation(this.bottomNavBarHeight);

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double fabX = (scaffoldGeometry.scaffoldSize.width -
            scaffoldGeometry.floatingActionButtonSize.width) /
        2;

    final floatingActionButtonHeight =
        scaffoldGeometry.floatingActionButtonSize.height;

    final double fabY = scaffoldGeometry.scaffoldSize.height -
        floatingActionButtonHeight -
        scaffoldGeometry.minInsets.bottom -
        (bottomNavBarHeight - floatingActionButtonHeight) / 2;
    return Offset(fabX, fabY);
  }
}
