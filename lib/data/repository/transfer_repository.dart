import 'package:balancei_app/domain/dtos/transfer.dart';
import 'package:balancei_app/domain/entities/date_filter/date_filter_entity.dart';
import 'package:balancei_app/domain/entities/financial_summary_entity/financial_summary_entity.dart';
import 'package:balancei_app/domain/entities/transactions/transaction_entity.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class TransferRepository {
  AsyncResult<List<TransactionEntity>> getTransfers(
      {DateFilterEntity? dateFilter});

  AsyncResult<TransactionEntity> getTransfer(int id);

  AsyncResult<Unit> addTransfer(TransferDTO transfer);

  AsyncResult<Unit> updateTransfer({
    required int id,
    required TransferDTO transfer,
  });

  AsyncResult<Unit> deleteTransfer(int id);

  AsyncResult<FinancialSummaryEntity> getFinancialSummary(
      {required DateFilterEntity dateFilter});
}
