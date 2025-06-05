import 'package:balancei_app/router/category/create_category_router.dart';
import 'package:balancei_app/router/routers.dart';
import 'package:balancei_app/ui/utils/common_radius.dart';
import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class CategoryFieldData {
  final String name;
  final Color color;
  final IconData icon;
  final bool isSelected;

  const CategoryFieldData({
    required this.name,
    required this.color,
    required this.icon,
    this.isSelected = false,
  });
}

class CategoryField extends ConsumerWidget {
  final List<CategoryFieldData> data;
  const CategoryField({super.key, required this.data});

  Future<void> showBottomSheet(BuildContext context) async {
    final categories = data;

    categories.add(
      CategoryFieldData(
        name: 'Criar nova categoria',
        color: Colors.grey,
        icon: Icons.add_circle_outline,
        isSelected: false,
      ),
    );

    await showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(CommonSpacing.large),
            child: ListView.separated(
              itemCount: categories.length,
              separatorBuilder: (context, index) => const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              itemBuilder: (context, index) {
                final category = categories[index];

                if (index == categories.length - 1) {
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 0,
                    ),
                    leading: Icon(category.icon, color: category.color),
                    title: Text(category.name),
                    onTap: () {
                      CreateCategoryRouter().push(context);
                    },
                  );
                }

                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 0,
                  ),
                  leading: Icon(category.icon, color: category.color),
                  title: Text(category.name),
                  trailing: category.isSelected
                      ? const Icon(Icons.check_circle, color: Colors.green)
                      : const Icon(Icons.circle_outlined, color: Colors.grey),
                  onTap: () {
                    // Handle selection logic here
                    Navigator.pop(context, category);
                  },
                );
              },
            ),
          ),
        );
      },
    );

    categories.removeLast();
    return;
  }

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

    final selectedCategories =
        data.where((category) => category.isSelected).toList();

    return InkWell(
      onTap: () => showBottomSheet(context),
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
                    itemCount: selectedCategories.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: CommonSpacing.extraSmall,
                    ),
                    itemBuilder: (context, index) {
                      final category = selectedCategories[index];

                      return buildBadge(
                        category.name,
                        category.color,
                        category.icon,
                      );
                    },
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
