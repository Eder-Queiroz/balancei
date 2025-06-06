import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:balancei_app/ui/utils/fields/color_picker/color_picker_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ColorPicker extends ConsumerStatefulWidget {
  final Function(int color) onColorSelected;
  const ColorPicker({super.key, required this.onColorSelected});

  @override
  ConsumerState<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends ConsumerState<ColorPicker> {
  late final viewModel = ref.watch(colorPickerViewModelProvider.notifier);

  final List<int> colorPickerPalette = [
    0xffAF3DFF,
    0xff2CC7E6,
    0xffFF3B94,
    0xffF7B500,
    0xff00E676,
    0xff00BFAE,
    0xffFF8345,
    0xffFF5555,
    0xff23FFAA,
    0xffFFE158,
    0xff8AFFC1,
    0xff2DFFB8,
    0xffB388FF,
    0xffFFA7C2,
    0xffFFCC80,
    0xffAEEA00,
    0xffFFD600,
    0xff7C4DFF,
    0xff448AFF,
    0xff69F0AE,
  ];

  @override
  void initState() {
    super.initState();
    widget.onColorSelected(colorPickerPalette.first);
  }

  Future<void> showBottomSheet(BuildContext context) async {
    await showModalBottomSheet<void>(
      context: context,
      useSafeArea: true,
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
                child: Wrap(
                  spacing: CommonSpacing.large,
                  runSpacing: CommonSpacing.small,
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: List.generate(
                    20,
                    (index) => InkWell(
                      onTap: () {
                        viewModel.selectColor = colorPickerPalette[index];
                        widget.onColorSelected(colorPickerPalette[index]);
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          color: Color(colorPickerPalette[
                              index]), // Replace with the selected color
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;

    final Color borderColor =
        inputDecorationTheme.enabledBorder?.borderSide.color ??
            theme.colorScheme.onSurface.withValues(alpha: 0.38);

    final colors =
        ref.watch(colorPickerViewModelProvider.select((state) => state.colors));

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
                ...colors.map((color) {
                  final isSelected =
                      color == colors.first; // Example selection logic
                  return buildColor(
                    color: color,
                    isSelected: isSelected,
                    onTap: () {
                      viewModel.selectColor = color;
                      widget.onColorSelected(color);
                    },
                  );
                }),
                InkWell(
                  onTap: () {
                    showBottomSheet(context);
                  },
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
