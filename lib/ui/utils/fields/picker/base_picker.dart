import 'package:balancei_app/ui/utils/common_radius.dart';
import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class BasePicker extends ConsumerStatefulWidget {
  final Function(int value) onValueSelected;
  final int initialValue;
  final String label;

  const BasePicker({
    super.key,
    required this.onValueSelected,
    required this.initialValue,
    required this.label,
  });
}

abstract class BasePickerState<T extends BasePicker> extends ConsumerState<T> {
  @protected
  bool isAvailableValuesLoading(WidgetRef ref);

  @protected
  List<int> getSelectedValues(WidgetRef ref);

  @protected
  void selectValue(int value);

  @protected
  Widget buildValueItem({
    required int item,
    required bool isSelected,
    required VoidCallback onTap,
  });

  @protected
  Widget buildValueGrid(BuildContext context);

  Future<void> showBottomSheet(BuildContext context) async {
    return showModalBottomSheet<void>(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        builder: (context) {
          return SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: CommonSpacing.large,
                vertical: CommonSpacing.extraLarge,
              ),
              child: IntrinsicHeight(
                child: Center(
                  child: buildValueGrid(context),
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;

    final Color borderColor =
        inputDecorationTheme.enabledBorder?.borderSide.color ??
            theme.colorScheme.onSurface.withValues(alpha: 0.38);

    final values = getSelectedValues(ref);

    return Column(
      spacing: CommonSpacing.extraSmall,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                widget.label,
                style: inputDecorationTheme.labelStyle,
              ),
            ),
            Row(
              spacing: CommonSpacing.ultraSmall,
              children: [
                ...!isAvailableValuesLoading(ref)
                    ? values.map((value) {
                        final isSelected = value == values.first;
                        return buildValueItem(
                          item: value,
                          isSelected: isSelected,
                          onTap: () {
                            selectValue(value);
                            widget.onValueSelected(value);
                          },
                        );
                      })
                    : List.generate(
                        3,
                        (index) => Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                InkWell(
                  onTap: () => showBottomSheet(context),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: CommonSpacing.ultraSmall,
                      horizontal: CommonSpacing.extraSmall,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff79747E),
                      borderRadius: BorderRadius.circular(CommonRadius.large.x),
                    ),
                    child: Text(
                      moreButtonText,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        Container(
          height: 1,
          color: borderColor,
        ),
      ],
    );
  }

  @protected
  String get moreButtonText => 'Outros';
}
