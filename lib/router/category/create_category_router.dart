import 'package:balancei_app/ui/category/create_category_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

const createCategoryRoute = TypedGoRoute<CreateCategoryRouter>(
  path: 'create-category',
);

class CreateCategoryRouter extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CreateCategoryScreen();
  }
}
