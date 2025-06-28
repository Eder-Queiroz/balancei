import 'package:balancei_app/domain/dtos/create_category.dart';
import 'package:balancei_app/domain/valdiations/create_category_validator.dart';
import 'package:balancei_app/ui/category/viewmodel/create_category_viewmodel.dart';
import 'package:balancei_app/ui/utils/common_radius.dart';
import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:balancei_app/ui/utils/fields/color_picker/color_picker.dart';
import 'package:balancei_app/ui/utils/fields/icon_picker/icon_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateCategoryScreen extends ConsumerStatefulWidget {
  const CreateCategoryScreen({super.key});

  @override
  ConsumerState<CreateCategoryScreen> createState() =>
      _CreateCategoryScreenState();
}

class _CreateCategoryScreenState extends ConsumerState<CreateCategoryScreen> {
  late final viewModel = ref.watch(createCategoryViewModelProvider.notifier);

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
                      onColorSelected: (color) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          viewModel.color = color;
                        });
                      },
                    ),
                    IconPicker(
                      selectedColor: dto.color ?? 0xff79747E,
                      onIconSelected: (icon) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          viewModel.iconCodePoint = icon;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(CommonRadius.extraLarge),
                    ),
                    padding: const EdgeInsets.all(CommonSpacing.small),
                    elevation: 4,
                    disabledBackgroundColor:
                        Theme.of(context).primaryColor.withValues(alpha: 0.5),
                  ),
                  onPressed: isValid(dto) ? () {} : null,
                  child: Text(
                    'Criar',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
