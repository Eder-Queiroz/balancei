import 'package:balancei_app/domain/dtos/create_category.dart';
import 'package:balancei_app/domain/valdiations/create_category_validator.dart';
import 'package:balancei_app/providers/categories_notifier.dart';
import 'package:balancei_app/ui/category/viewmodel/create_category_viewmodel.dart';
import 'package:balancei_app/ui/utils/buttons/loading_button.dart';
import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:balancei_app/ui/utils/fields/picker/color_picker/color_picker.dart';
import 'package:balancei_app/ui/utils/fields/picker/icon_picker/icon_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CreateCategoryScreen extends ConsumerStatefulWidget {
  const CreateCategoryScreen({super.key});

  @override
  ConsumerState<CreateCategoryScreen> createState() =>
      _CreateCategoryScreenState();
}

class _CreateCategoryScreenState extends ConsumerState<CreateCategoryScreen> {
  late final viewModel = ref.read(createCategoryViewModelProvider.notifier);
  late final categoriesNotifier = ref.read(categoriesNotifierProvider.notifier);

  final descriptionController = TextEditingController();
  final validator = CreateCategoryValidator();

  bool isValid(CreateCategoryDTO dto) {
    return validator.validate(dto).isValid;
  }

  @override
  Widget build(BuildContext context) {
    final dto = ref.watch(createCategoryViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Categoria'),
        elevation: 2,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: CommonSpacing.large,
            vertical: CommonSpacing.extraSmall,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Form(
                child: Column(
                  spacing: CommonSpacing.small,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        labelText: 'Descrição da categoria',
                        hintText: 'Ex: Alimentação',
                      ),
                      onChanged: (value) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          viewModel.description = value;
                        });
                      },
                    ),
                    ColorPicker(
                      onValueSelected: (color) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          viewModel.color = color;
                        });
                      },
                      initialValue: dto.color?.value ?? 0xff79747E,
                    ),
                    IconPicker(
                      onValueSelected: (icon) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          viewModel.icon = icon;
                        });
                      },
                      initialValue: dto.icon?.value ?? 0xe3b0,
                      selectedColor: dto.color?.value ?? 0xff79747E,
                    ),
                  ],
                ),
              ),
              LoadingButton(
                label: 'Criar',
                enabled: isValid(dto),
                onPressed: viewModel.createCategory,
                errorMessage: 'Erro ao criar categoria',
                onSuccess: () {
                  categoriesNotifier.fetchCategories();
                  context.pop();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
