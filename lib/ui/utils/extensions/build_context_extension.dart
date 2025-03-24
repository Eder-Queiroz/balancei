import 'package:balancei_app/ui/utils/exceptions/month_picker.exception.dart';
import 'package:balancei_app/ui/utils/month_picker/month_picker.dart';
import 'package:flutter/material.dart';
import 'package:result_dart/result_dart.dart';

extension BuildContextExtension on BuildContext {
  /// Displays a month picker modal bottom sheet and returns the selected date.
  ///
  /// This method shows a modal bottom sheet containing a [MonthPicker] widget,
  /// allowing the user to select a month. The selected date is returned as a
  /// [Success] result. If no date is selected, a [Failure] result is returned
  /// with a [MonthPickerException].
  ///
  /// The [startDate] parameter can be used to specify the initial date displayed
  /// in the month picker. If [startDate] is not provided, the current date will
  /// be used.
  ///
  /// Returns an [AsyncResult] containing the selected [DateTime] on success,
  /// or a [MonthPickerException] on failure.
  ///
  /// Example usage:
  /// ```dart
  /// final result = await context.showMonthPicker(startDate: DateTime.now());
  /// result.when(
  ///   success: (date) => print('Selected date: $date'),
  ///   failure: (error) => print('Error: $error'),
  /// );
  /// ```
  ///
  /// [startDate]: The initial date displayed in the month picker.
  /// Returns: An [AsyncResult] containing the selected [DateTime] or a [MonthPickerException].
  AsyncResult<DateTime> showMonthPicker({DateTime? startDate}) async {
    try {
      final pickedDate = await showModalBottomSheet<DateTime>(
        context: this,
        useSafeArea: true,
        builder: (context) {
          return MonthPicker(
            startDate: startDate,
          );
        },
      );

      if (pickedDate == null) {
        return Failure(
            MonthPickerException("[showMonthPicker] No date selected"));
      }

      return Success(pickedDate);
    } catch (error, stackTrace) {
      return Failure(
          MonthPickerException("[showMonthPicker] $error", stackTrace));
    }
  }
}
