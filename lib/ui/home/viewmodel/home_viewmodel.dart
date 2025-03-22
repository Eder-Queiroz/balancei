import 'package:balancei_app/data/repository/remote_transfer_repository.dart';
import 'package:balancei_app/data/repository/transfer_repository.dart';
import 'package:balancei_app/ui/home/state/home_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewModelProvider =
    NotifierProvider.autoDispose<HomeViewModel, HomeState>(
        () => HomeViewModel());

class HomeViewModel extends AutoDisposeNotifier<HomeState> {
  late final TransferRepository _transferRepository;

  @override
  HomeState build() {
    _transferRepository = ref.read(transferRepositoryProvider);
    return HomeState();
  }

  Future<void> fetchTransfers() async {
    state = HomeState(summary: AsyncValue.loading());
    final result = await _transferRepository.getFinancialSummary(
      startDate: DateTime.now().subtract(
        Duration(days: 6),
      ),
    );

    state = result.fold(
      (success) => state = HomeState(summary: AsyncValue.data(success)),
      (failure) => state =
          HomeState(summary: AsyncValue.error(failure, StackTrace.current)),
    );
  }
}
