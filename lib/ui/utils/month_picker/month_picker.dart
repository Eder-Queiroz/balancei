import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:balancei_app/ui/utils/month_picker/viewmodel/month_picker_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class MonthPicker extends ConsumerStatefulWidget {
  final DateTime? startDate;

  const MonthPicker({super.key, this.startDate});

  @override
  ConsumerState<MonthPicker> createState() => _MonthPickerState();
}

class _MonthPickerState extends ConsumerState<MonthPicker> {
  late final provider = monthPickerViewModelProvider(widget.startDate);
  late final viewModel = ref.read(provider.notifier);

  final monthsInYear = 12;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final state = ref.watch(provider);
    final year = state.year;
    final selectedDate = state.selectedDate;
    final isForward = state.isForward;
    return Wrap(
      children: [
        Padding(
          padding: EdgeInsets.only(top: CommonSpacing.medium),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: viewModel.prevYear,
              ),
              Text(
                year.toString(),
                style: TextStyle(fontSize: 20),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: viewModel.nextYear,
              ),
            ],
          ),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) {
            final offsetAnimation = Tween<Offset>(
              begin: Offset(isForward ? -1 : 1, 0),
              end: Offset.zero,
            ).animate(animation);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
          child: GridView.count(
            key: ValueKey<int>(year),
            crossAxisCount: 3,
            childAspectRatio: 2,
            mainAxisSpacing: CommonSpacing.medium,
            padding: EdgeInsets.all(CommonSpacing.small),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(
              monthsInYear,
              (index) {
                final date = DateTime(year, index + 1);

                return GestureDetector(
                  onTap: () {
                    viewModel.selectDate(date);
                    context.pop(date);
                  },
                  child: Card(
                    elevation: 2,
                    color: date == selectedDate
                        ? theme.primaryColor
                        : theme.colorScheme.secondary,
                    child: Center(
                      child: Text(
                        DateFormat.MMMM('pt_BR').format(date),
                        style: theme.textTheme.headlineMedium!.copyWith(
                          color: date == selectedDate
                              ? theme.colorScheme.secondary
                              : theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
