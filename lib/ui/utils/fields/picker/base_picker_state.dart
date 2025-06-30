import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class BasePickerModelState {
  final AsyncValue<List<int>> availableItems;
  final List<int> lastItems;
  final int selectedItem;

  const BasePickerModelState({
    this.availableItems = const AsyncLoading(),
    this.selectedItem = 0,
    this.lastItems = const [],
  });

  BasePickerModelState copyWith({
    AsyncValue<List<int>>? items,
    int? selectedItem,
    List<int>? lastItems,
  }) {
    return BasePickerModelState(
      availableItems: items ?? availableItems,
      selectedItem: selectedItem ?? this.selectedItem,
      lastItems: lastItems ?? this.lastItems,
    );
  }

  List<int> get itemsList {
    return availableItems.asData?.value ?? [];
  }
}
