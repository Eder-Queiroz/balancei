import 'package:balancei_app/domain/entities/picker/base_picker_entity.dart';
import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:balancei_app/ui/utils/fields/picker/base_picker.dart';
import 'package:balancei_app/ui/utils/fields/picker/color_picker/color_picker_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ColorPicker extends BasePicker {
  const ColorPicker({
    super.key,
    required super.onValueSelected,
    required super.initialValue,
    super.label = 'Color',
  });

  @override
  ConsumerState<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends BasePickerState<ColorPicker> {
  late final viewModel = ref.read(colorPickerViewModelProvider.notifier);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewModel.fetchAvailableItems(onStartedValue: widget.onValueSelected);
    });
  }

  @override
  bool isAvailableValuesLoading(WidgetRef ref) {
    return ref.watch(colorPickerViewModelProvider.select(
      (state) => state.availableItems.isLoading,
    ));
  }

  @override
  List<BasePickerEntity> getSelectedValues(WidgetRef ref) {
    return ref
        .watch(colorPickerViewModelProvider.select((state) => state.lastItems));
  }

  @override
  void selectValue(BasePickerEntity value) {
    viewModel.selectItem(value);
  }

  @override
  Widget buildValueItem({
    required BasePickerEntity item,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: Color(item.value),
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

  @override
  Widget buildValueGrid(BuildContext context) {
    final colors = ref.watch(
      colorPickerViewModelProvider.select((state) => state.availableItems),
    );
    return Wrap(
      spacing: CommonSpacing.large,
      runSpacing: CommonSpacing.small,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: colors.when(
        data: (colors) {
          return List.generate(
            colors.length,
            (index) => InkWell(
              onTap: () {
                viewModel.selectItem(colors[index]);
                widget.onValueSelected(colors[index]);
                Navigator.pop(context);
              },
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: Color(colors[index].value),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          );
        },
        error: (error, stackTrace) {
          return [SizedBox.shrink()];
        },
        loading: () {
          return List.generate(
            10,
            (index) => Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
            ),
          );
        },
      ),
    );
  }
}
