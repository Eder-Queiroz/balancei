import 'package:balancei_app/domain/entities/picker/base_picker_entity.dart';
import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:balancei_app/ui/utils/fields/picker/base_picker.dart';
import 'package:balancei_app/ui/utils/fields/picker/icon_picker/icon_picker_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IconPicker extends BasePicker {
  final int selectedColor;

  const IconPicker({
    super.key,
    required this.selectedColor,
    required super.onValueSelected,
    required super.initialValue,
    super.label = 'Icon',
  });

  @override
  ConsumerState<IconPicker> createState() => _IconPickerState();
}

class _IconPickerState extends BasePickerState<IconPicker> {
  late final viewModel = ref.read(iconPickerViewModelProvider.notifier);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewModel.fetchAvailableItems(onStartedValue: widget.onValueSelected);
    });
  }

  @override
  bool isAvailableValuesLoading(WidgetRef ref) {
    return ref.watch(
      iconPickerViewModelProvider
          .select((state) => state.availableItems.isLoading),
    );
  }

  @override
  void selectValue(BasePickerEntity value) {
    viewModel.selectItem(value);
  }

  @override
  List<BasePickerEntity> getSelectedValues(WidgetRef ref) {
    return ref
        .watch(iconPickerViewModelProvider.select((state) => state.lastItems));
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
          color: isSelected ? Color(widget.selectedColor) : Color(0xff79747E),
          shape: BoxShape.circle,
        ),
        child: Icon(
          IconData(item.value, fontFamily: 'MaterialIcons'),
          color: Colors.white,
          size: 16,
        ),
      ),
    );
  }

  @override
  Widget buildValueGrid(BuildContext context) {
    final icons = ref.watch(
      iconPickerViewModelProvider.select((state) => state.availableItems),
    );
    return Wrap(
      spacing: CommonSpacing.large,
      runSpacing: CommonSpacing.small,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: icons.when(
        data: (icons) {
          return List.generate(
            icons.length,
            (index) => InkWell(
              onTap: () {
                viewModel.selectItem(icons[index]);
                widget.onValueSelected(icons[index]);
                Navigator.pop(context);
              },
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: Color(0xff79747E),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  IconData(icons[index].value, fontFamily: 'MaterialIcons'),
                  color: Colors.white,
                  size: 24,
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
              child: Icon(
                Icons.hourglass_empty,
                color: Colors.grey.shade600,
                size: 24,
              ),
            ),
          );
        },
      ),
    );
  }
}
