import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ColorPicker extends ConsumerWidget {
  const ColorPicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;

    final Color borderColor =
        inputDecorationTheme.enabledBorder?.borderSide.color ??
            theme.colorScheme.onSurface.withValues(alpha: 0.38);

    Widget buildColor({
      required int color,
      required bool isSelected,
      required VoidCallback onTap,
    }) {
      return InkWell(
        onTap: onTap,
        child: Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: Color(color), // Replace with the selected color
            shape: BoxShape.circle,
          ),
          child: isSelected
              ? Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 16,
                )
              : null,
        ),
      );
    }

    return Column(
      spacing: CommonSpacing.extraSmall,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                'Cor',
                style: inputDecorationTheme.labelStyle,
              ),
            ),
            Row(
              spacing: CommonSpacing.ultraSmall,
              children: [
                buildColor(
                  color: 0xffAF3DFF, // Replace with the selected color
                  isSelected: true, // Change this based on selection logic
                  onTap: () {},
                ),
                buildColor(
                  color: 0xff2CC7E6,
                  isSelected: false,
                  onTap: () {},
                ),
                buildColor(
                  color: 0xffFF3B94,
                  isSelected: false,
                  onTap: () {},
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 3,
                      horizontal: CommonSpacing.extraSmall,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff79747E),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      'Outras',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          height: 1.0,
          color: borderColor,
        ),
      ],
    );
  }
}
