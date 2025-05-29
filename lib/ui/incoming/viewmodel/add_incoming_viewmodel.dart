import 'package:balancei_app/domain/dtos/add_incoming.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addIncomingViewModelProvider =
    NotifierProvider.autoDispose<AddIncomingViewModel, AddIncomingDTO>(
  AddIncomingViewModel.new,
);

class AddIncomingViewModel extends AutoDisposeNotifier<AddIncomingDTO> {
  @override
  AddIncomingDTO build() {
    return AddIncomingDTO();
  }

  set value(double? value) {
    state = state.copyWith(value: value);
  }

  set received(bool? value) {
    state = state.copyWith(received: value);
  }

  set description(String? value) {
    state = state.copyWith(description: value);
  }

  set isRecurring(bool? value) {
    state = state.copyWith(isRecurring: value);
  }

  set repeat(bool? value) {
    state = state.copyWith(repeat: value);
  }
}
