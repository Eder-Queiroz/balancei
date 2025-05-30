import 'package:balancei_app/ui/utils/common_radius.dart';
import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryField extends ConsumerWidget {
  const CategoryField({super.key});

  Widget buildBadge(String text, Color color, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: CommonSpacing.small,
        vertical: CommonSpacing.ultraSmall,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(CommonRadius.extraLarge),
        border: Border.all(
          color: color,
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: color),
          const SizedBox(width: CommonSpacing.extraSmall),
          Text(text, style: TextStyle(color: color)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;

    final Color borderColor =
        inputDecorationTheme.enabledBorder?.borderSide.color ??
            theme.colorScheme.onSurface.withValues(alpha: 0.38);

    final mockedCategories = [
      buildBadge('Alimentação', Colors.green, Icons.fastfood),
      buildBadge('Transporte', Colors.blue, Icons.directions_car),
    ];

    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: CommonSpacing.extraSmall,
        children: [
          Text(
            'Categoria',
            style: inputDecorationTheme.labelStyle,
          ),
          Row(
            children: [
              Flexible(
                child: SizedBox(
                  height: 32,
                  child: ListView.separated(
                    padding: const EdgeInsets.only(
                      right: CommonSpacing.extraSmall,
                      left: CommonSpacing.ultraSmall,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: mockedCategories.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: CommonSpacing.extraSmall,
                    ),
                    itemBuilder: (context, index) => mockedCategories[index],
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward_ios_rounded),
            ],
          ),
          Container(
            height: 1.0,
            color: borderColor,
          ),
        ],
      ),
    );
  }
}
