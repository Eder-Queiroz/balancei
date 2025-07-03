import 'package:balancei_app/domain/enums/transaction_type_enum.dart';
import 'package:balancei_app/ui/transfer/add_transfer_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const transferRoute = TypedGoRoute<TransferRouter>(
  path: 'add-transfer',
);

class TransferRouter extends GoRouteData {
  final TransactionTypeEnum type;

  const TransferRouter({required this.type});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AddTransferScreen(type: type);
  }
}
