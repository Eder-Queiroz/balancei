import 'package:freezed_annotation/freezed_annotation.dart';

part 'month_picker_state.freezed.dart';

@freezed
class MonthPickerState with _$MonthPickerState {
  const MonthPickerState._();

  const factory MonthPickerState({
    required int year,
    required DateTime selectedDate,
    @Default(false) bool isForward,
  }) = _MonthPickerState;

  factory MonthPickerState.initial(DateTime startedDate) => MonthPickerState(
        year: startedDate.year,
        selectedDate: startedDate,
      );
}
