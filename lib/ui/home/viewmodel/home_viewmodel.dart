import 'package:balancei_app/data/repository/remote_transfer_repository.dart';
import 'package:balancei_app/data/repository/transfer_repository.dart';
import 'package:balancei_app/ui/home/state/home_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewModelProvider =
    NotifierProvider<HomeViewModel, HomeState>(() => HomeViewModel());

class HomeViewModel extends Notifier<HomeState> {
  late final TransferRepository _transferRepository;

  @override
  HomeState build() {
    _transferRepository = ref.read(transferRepositoryProvider);
    return HomeState();
  }

  Future<void> fetchTransfers() async {
    state = HomeState(transactions: AsyncValue.loading());
    final result = await _transferRepository.getTransfers();

    state = result.fold(
      (success) => state = HomeState(transactions: AsyncValue.data(success)),
      (failure) => state = HomeState(
          transactions: AsyncValue.error(failure, StackTrace.current)),
    );
  }
}
