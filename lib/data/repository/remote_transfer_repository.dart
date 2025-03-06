import 'package:balancei_app/data/repository/transfer_repository.dart';
import 'package:balancei_app/domain/dtos/transfer.dart';
import 'package:balancei_app/domain/entities/transactions/transaction_entity.dart';
import 'package:result_dart/src/types.dart';
import 'package:result_dart/src/unit.dart';

class RemoteTransferRepository implements TransferRepository {
  @override
  AsyncResult<Unit> addTransfer(Transfer transfer) {
    // TODO: implement addTransfer
    throw UnimplementedError();
  }

  @override
  AsyncResult<Unit> deleteTransfer(String id) {
    // TODO: implement deleteTransfer
    throw UnimplementedError();
  }

  @override
  AsyncResult<TransactionEntity> getTransfer(String id) {
    // TODO: implement getTransfer
    throw UnimplementedError();
  }

  @override
  AsyncResult<List<TransactionEntity>> getTransfers() {
    // TODO: implement getTransfers
    throw UnimplementedError();
  }

  @override
  AsyncResult<Unit> updateTransfer(Transfer transfer) {
    // TODO: implement updateTransfer
    throw UnimplementedError();
  }
}
