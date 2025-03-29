import 'package:balancei_app/ui/utils/month_picker/state/month_picker_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final monthPickerViewModelProvider = NotifierProvider.autoDispose
    .family<MonthPickerViewModel, MonthPickerState, DateTime?>(
  MonthPickerViewModel.new,
);

class MonthPickerViewModel
    extends AutoDisposeFamilyNotifier<MonthPickerState, DateTime?> {
  @override
  MonthPickerState build(DateTime? arg) {
    final date = arg ?? DateTime.now();

    return MonthPickerState.initial(
      DateTime(date.year, date.month),
    );
  }

  void prevYear() {
    final year = state.year - 1;
    state = state.copyWith(year: year, isForward: true);
  }

  void nextYear() {
    final year = state.year + 1;
    state = state.copyWith(year: year, isForward: false);
  }

  void selectDate(DateTime date) {
    state = state.copyWith(selectedDate: date);
  }
}
