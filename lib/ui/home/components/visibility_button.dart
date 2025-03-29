import 'package:flutter/material.dart';

class VisibilityButton extends StatelessWidget {
  final bool isVisible;
  final double size;
  final void Function() onPressed;
  const VisibilityButton({
    super.key,
    required this.isVisible,
    required this.onPressed,
    this.size = 18,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) {
          return FadeTransition(
            opacity: animation,
            child: ScaleTransition(
              scale: animation,
              child: child,
            ),
          );
        },
        child: IconButton(
          key: ValueKey<bool>(isVisible),
          icon: Icon(
            isVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: onPressed,
          padding: EdgeInsets.zero,
          color: Color(0xFF79747E),
          iconSize: size,
        ),
      ),
    );
  }
}
