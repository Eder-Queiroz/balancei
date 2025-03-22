import 'package:balancei_app/domain/entities/financial_summary_entity/financial_summary_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default(AsyncValue.loading()) AsyncValue<FinancialSummaryEntity> summary,
  }) = _HomeState;
}
