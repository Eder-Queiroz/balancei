import 'package:balancei_app/domain/dtos/add_incoming.dart';
import 'package:balancei_app/domain/entities/category/category_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class AddIcomingState {
  final AddIncomingDTO dto;
  final AsyncValue<List<CategoryEntity>> categories;

  const AddIcomingState({
    this.dto = const AddIncomingDTO(),
    this.categories = const AsyncLoading(),
  });

  AddIcomingState copyWith({
    AddIncomingDTO? dto,
    AsyncValue<List<CategoryEntity>>? categories,
  }) {
    return AddIcomingState(
      dto: dto ?? this.dto,
      categories: categories ?? this.categories,
    );
  }
}
