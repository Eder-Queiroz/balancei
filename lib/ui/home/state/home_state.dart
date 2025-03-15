import 'package:balancei_app/domain/entities/transactions/transaction_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default(AsyncValue.loading())
    AsyncValue<List<TransactionEntity>> transactions,
  }) = _HomeState;
}
