import 'package:balancei_app/ui/utils/exceptions/month_picker.exception.dart';
import 'package:balancei_app/ui/utils/month_picker/month_picker.dart';
import 'package:flutter/material.dart';
import 'package:result_dart/result_dart.dart';

extension BuildContextExtension on BuildContext {
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
