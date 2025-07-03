import 'package:balancei_app/domain/dtos/transfer.dart';
import 'package:balancei_app/domain/entities/category/category_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class AddIcomingState {
  final TransferDTO dto;
  final AsyncValue<List<CategoryEntity>> categories;

  const AddIcomingState({
    this.dto = const TransferDTO(),
    this.categories = const AsyncLoading(),
  });

  AddIcomingState copyWith({
    TransferDTO? dto,
    AsyncValue<List<CategoryEntity>>? categories,
  }) {
    return AddIcomingState(
      dto: dto ?? this.dto,
      categories: categories ?? this.categories,
    );
  }
}
