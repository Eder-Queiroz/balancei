import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_filter_entity.freezed.dart';

@freezed
class DateFilterEntity with _$DateFilterEntity {
  const factory DateFilterEntity({
    required DateTime startDate,
    required DateTime endDate,
  }) = _DateFilterEntity;

  factory DateFilterEntity.forMonth({required DateTime date}) {
    final startDate = DateTime(date.year, date.month);
    final endDate =
        DateTime(date.year, date.month + 1).subtract(Duration(days: 1));

    return DateFilterEntity(
      startDate: startDate,
      endDate: endDate,
    );
  }
}
