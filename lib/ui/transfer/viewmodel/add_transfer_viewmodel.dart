import 'package:balancei_app/data/repository/remote_transfer_repository.dart';
import 'package:balancei_app/data/repository/transfer_repository.dart';
import 'package:balancei_app/domain/dtos/transfer.dart';
import 'package:balancei_app/domain/entities/category/category_entity.dart';
import 'package:balancei_app/domain/enums/transaction_type_enum.dart';
import 'package:balancei_app/providers/categories_notifier.dart';
import 'package:balancei_app/ui/transfer/state/add_transfer_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_dart/result_dart.dart';

final addTransferViewModelProvider = NotifierProvider.autoDispose
    .family<AddTransferViewModel, AddTransferState, TransactionTypeEnum>(
  AddTransferViewModel.new,
);

class AddTransferViewModel
    extends AutoDisposeFamilyNotifier<AddTransferState, TransactionTypeEnum> {
  late final TransferRepository _transferRepository;
  @override
  AddTransferState build(arg) {
    _transferRepository = ref.read(transferRepositoryProvider);

    ref.listen(categoriesNotifierProvider, (previous, next) {
      next.whenData((categories) {
        if (categories.isNotEmpty && state.dto.category?.id == null) {
          category = categories.first;
        }
        state = state.copyWith(categories: next);
      });
    });

    return AddTransferState(
      dto: TransferDTO(
        type: arg,
        date: DateTime.now(),
      ),
      categories: const AsyncLoading(),
    );
  }

  Future<void> fetchCategories() async {
    ref.read(categoriesNotifierProvider.notifier).fetchCategories();
  }

  AsyncResult<Unit> addIncoming() {
    return _transferRepository.addTransfer(state.dto);
  }

  set title(String? value) {
    state = state.copyWith(dto: state.dto.copyWith(title: value));
  }

  set description(String? value) {
    state = state.copyWith(dto: state.dto.copyWith(description: value));
  }

  set amount(double? value) {
    state = state.copyWith(dto: state.dto.copyWith(amount: value));
  }

  set date(DateTime? value) {
    state = state.copyWith(dto: state.dto.copyWith(date: value));
  }

  set type(int? value) {
    state = state.copyWith(dto: state.dto.copyWith(type: value));
  }

  set category(CategoryEntity? value) {
    state = state.copyWith(dto: state.dto.copyWith(category: value));
  }

  set isRecurring(bool value) {
    state = state.copyWith(dto: state.dto.copyWith(isRecurring: value));
  }

  set isCompleted(bool value) {
    state = state.copyWith(dto: state.dto.copyWith(isCompleted: value));
  }

  set recurrenceEndDate(DateTime? value) {
    state = state.copyWith(dto: state.dto.copyWith(recurrenceEndDate: value));
  }
}
