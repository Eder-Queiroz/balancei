import 'package:flutter_riverpod/flutter_riverpod.dart';

final loadingButtonViewModelProvider =
    NotifierProvider.autoDispose<LoadingButtonViewModel, bool>(
  LoadingButtonViewModel.new,
);

class LoadingButtonViewModel extends AutoDisposeNotifier<bool> {
  @override
  bool build() {
    return false;
  }

  void startLoading() {
    state = true;
  }

  void stopLoading() {
    state = false;
  }
}
