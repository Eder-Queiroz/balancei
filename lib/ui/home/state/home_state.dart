import 'package:balancei_app/domain/entities/date_filter/date_filter_entity.dart';
import 'package:balancei_app/domain/entities/financial_summary_entity/financial_summary_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(AsyncValue.loading()) AsyncValue<FinancialSummaryEntity> summary,
    required DateFilterEntity selectedDateFilter,
    @Default(false) bool isVisibleValues,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        selectedDateFilter: DateFilterEntity.forMonth(date: DateTime.now()),
      );
}
