import 'package:balancei_app/domain/entities/picker/base_picker_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class BasePickerModelState {
  final AsyncValue<List<BasePickerEntity>> availableItems;
  final List<BasePickerEntity> lastItems;
  final BasePickerEntity selectedItem;

  const BasePickerModelState({
    this.availableItems = const AsyncLoading(),
    this.selectedItem = const BasePickerEntity(id: 0, value: 0),
    this.lastItems = const [],
  });

  BasePickerModelState copyWith({
    AsyncValue<List<BasePickerEntity>>? items,
    BasePickerEntity? selectedItem,
    List<BasePickerEntity>? lastItems,
  }) {
    return BasePickerModelState(
      availableItems: items ?? availableItems,
      selectedItem: selectedItem ?? this.selectedItem,
      lastItems: lastItems ?? this.lastItems,
    );
  }

  List<BasePickerEntity> get itemsList {
    return availableItems.asData?.value ?? [];
  }
}
