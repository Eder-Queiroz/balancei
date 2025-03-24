import 'package:balancei_app/data/repository/remote_transfer_repository.dart';
import 'package:balancei_app/data/repository/transfer_repository.dart';
import 'package:balancei_app/domain/entities/date_filter/date_filter_entity.dart';
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
    return HomeState.initial();
  }

  Future<void> fetchTransfers() async {
    state = state.copyWith(summary: AsyncValue.loading());
    final result = await _transferRepository.getFinancialSummary(
      dateFilter: state.selectedDateFilter,
    );

    state = result.fold(
      (success) => state = state.copyWith(summary: AsyncValue.data(success)),
      (failure) => state = state.copyWith(
        summary: AsyncValue.error(failure, StackTrace.current),
      ),
    );
  }

  void selectDate(DateTime date) {
    state = state.copyWith(
      selectedDateFilter: DateFilterEntity.forMonth(date: date),
    );
  }
}
