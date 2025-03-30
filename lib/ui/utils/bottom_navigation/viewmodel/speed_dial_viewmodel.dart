import 'package:flutter_riverpod/flutter_riverpod.dart';

final speedDialViewModel =
    NotifierProvider.autoDispose<SpeedDialViewModel, bool>(
  () => SpeedDialViewModel(),
);

class SpeedDialViewModel extends AutoDisposeNotifier<bool> {
  @override
  bool build() {
    return false;
  }

  bool toggleAdditionalButtons() {
    state = !state;
    return state;
  }
}
