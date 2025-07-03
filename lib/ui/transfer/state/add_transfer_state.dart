import 'package:balancei_app/domain/dtos/transfer.dart';
import 'package:balancei_app/domain/entities/category/category_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class AddTransferState {
  final TransferDTO dto;
  final AsyncValue<List<CategoryEntity>> categories;

  const AddTransferState({
    this.dto = const TransferDTO(),
    this.categories = const AsyncLoading(),
  });

  AddTransferState copyWith({
    TransferDTO? dto,
    AsyncValue<List<CategoryEntity>>? categories,
  }) {
    return AddTransferState(
      dto: dto ?? this.dto,
      categories: categories ?? this.categories,
    );
  }
}
