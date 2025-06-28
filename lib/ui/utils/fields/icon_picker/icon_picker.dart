import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:balancei_app/ui/utils/fields/icon_picker/icon_picker_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IconPicker extends ConsumerStatefulWidget {
  final Function(int icon) onIconSelected;
  final int selectedColor;

  const IconPicker({
    super.key,
    required this.onIconSelected,
    this.selectedColor = 0xffAF3DFF,
  });

  @override
  ConsumerState<IconPicker> createState() => _IconPickerState();
}

class _IconPickerState extends ConsumerState<IconPicker> {
  late final viewModel = ref.watch(iconPickerViewModelProvider.notifier);

  final List<IconData> allFinancialIcons = [
    Icons.account_balance,
    Icons.attach_money,
    Icons.monetization_on,
    Icons.currency_exchange,
    Icons.credit_card,
    Icons.account_balance_wallet,
    Icons.trending_up,
    Icons.add_circle,
    Icons.payments,
    Icons.work,
    Icons.request_page,
    Icons.redeem,
    Icons.trending_down,
    Icons.shopping_cart,
    Icons.shopping_bag,
    Icons.receipt_long,
    Icons.receipt,
    Icons.local_offer,
    Icons.restaurant,
    Icons.directions_car,
    Icons.home,
    Icons.local_hospital,
    Icons.school,
    Icons.shopping_basket,
    Icons.theater_comedy,
    Icons.fitness_center,
    Icons.wifi,
    Icons.local_laundry_service,
    Icons.child_friendly,
    Icons.pets,
    Icons.show_chart,
    Icons.savings,
    Icons.pie_chart,
    Icons.account_balance,
    Icons.trending_up,
    Icons.real_estate_agent,
    Icons.calendar_today,
    Icons.flag,
    Icons.edit_calendar,
    Icons.lock_clock,
    Icons.auto_graph,
    Icons.check_circle,
  ];

  @override
  void initState() {
    super.initState();
    widget.onIconSelected(allFinancialIcons.first.codePoint);
  }

  Future<void> showBottomSheet(BuildContext context) async {
    await showModalBottomSheet<void>(
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
                child: Wrap(
                  spacing: CommonSpacing.large,
                  runSpacing: CommonSpacing.small,
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: List.generate(
                    allFinancialIcons.length,
                    (index) => InkWell(
                      onTap: () {
                        viewModel.selectIcon =
                            allFinancialIcons[index].codePoint;
                        widget
                            .onIconSelected(allFinancialIcons[index].codePoint);
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          color: Color(
                              0xff79747E), // Replace with the selected color
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          allFinancialIcons[index],
                          color: Colors.white,
                          size: 24,
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

  Widget buildIcon({
    required int iconCodePoint,
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
          IconData(iconCodePoint, fontFamily: 'MaterialIcons'),
          color: Colors.white,
          size: 16,
        ),
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

    final List<int> icons =
        ref.watch(iconPickerViewModelProvider.select((state) => state.icons));

    return Column(
      spacing: CommonSpacing.extraSmall,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                'Icone',
                style: inputDecorationTheme.labelStyle,
              ),
            ),
            Row(
              spacing: CommonSpacing.ultraSmall,
              children: [
                ...icons.map((icon) {
                  final isSelected = icon == icons.first;
                  return buildIcon(
                    iconCodePoint: icon,
                    isSelected: isSelected,
                    onTap: () {
                      viewModel.selectIcon = icon;
                      widget.onIconSelected(icon);
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
                      'Outros',
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
