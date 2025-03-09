import 'package:balancei_app/domain/dtos/transfer.dart';
import 'package:balancei_app/domain/entities/transactions/transaction_entity.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class TransferRepository {
  AsyncResult<List<TransactionEntity>> getTransfers();

  AsyncResult<TransactionEntity> getTransfer(int id);

  AsyncResult<Unit> addTransfer(Transfer transfer);

  AsyncResult<Unit> updateTransfer({
    required int id,
    required Transfer transfer,
  });

  AsyncResult<Unit> deleteTransfer(int id);
}
