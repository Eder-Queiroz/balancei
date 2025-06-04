import 'package:balancei_app/ui/incoming/add_incoming_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const incomingRoute = TypedGoRoute<IncomingRouter>(
  path: 'add-incoming',
);

class IncomingRouter extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AddIncomingScreen();
  }
}
