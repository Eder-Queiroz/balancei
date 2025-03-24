import 'package:balancei_app/data/datasource/dao/transaction_dao.dart';
import 'package:balancei_app/data/mappers/financial_summary_mapper.dart';
import 'package:balancei_app/data/repository/transfer_repository.dart';
import 'package:balancei_app/domain/dtos/transfer.dart';
import 'package:balancei_app/domain/entities/date_filter/date_filter_entity.dart';
import 'package:balancei_app/domain/entities/financial_summary_entity/financial_summary_entity.dart';
import 'package:balancei_app/domain/entities/transactions/transaction_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_dart/result_dart.dart';

final transferRepositoryProvider = Provider<TransferRepository>(
  (ref) => RemoteTransferRepository(
    transactionDao: ref.read(transactionDaoProvider),
  ),
);

class RemoteTransferRepository implements TransferRepository {
  final TransactionDao _transactionDao;

  RemoteTransferRepository({
    required TransactionDao transactionDao,
  }) : _transactionDao = transactionDao;

  @override
  AsyncResult<Unit> addTransfer(Transfer transfer) {
    return _transactionDao.createTransaction(transfer);
  }

  @override
  AsyncResult<TransactionEntity> getTransfer(int id) {
    return _transactionDao.getTransactionById(id);
  }

  @override
  AsyncResult<List<TransactionEntity>> getTransfers(
      {DateFilterEntity? dateFilter}) {
    return _transactionDao.getAllTransactions(dateFilter: dateFilter);
  }

  @override
  AsyncResult<Unit> updateTransfer({
    required int id,
    required Transfer transfer,
  }) {
    return _transactionDao.updateTransaction(id, transfer);
  }

  @override
  AsyncResult<Unit> deleteTransfer(int id) {
    return _transactionDao.deleteTransaction(id);
  }

  @override
  AsyncResult<FinancialSummaryEntity> getFinancialSummary(
      {required DateFilterEntity dateFilter}) {
    return _transactionDao
        .getAllTransactions(dateFilter: dateFilter)
        .map(FinancialSummaryMapper.fromTransactions);
  }
}
