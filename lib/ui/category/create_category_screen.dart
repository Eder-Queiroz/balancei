import 'package:balancei_app/ui/utils/common_radius.dart';
import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:balancei_app/ui/utils/fields/color_picker.dart';
import 'package:balancei_app/ui/utils/fields/icon_picker.dart';
import 'package:flutter/material.dart';

class CreateCategoryScreen extends StatefulWidget {
  const CreateCategoryScreen({super.key});

  @override
  State<CreateCategoryScreen> createState() => _CreateCategoryScreenState();
}

class _CreateCategoryScreenState extends State<CreateCategoryScreen> {
  @override
  Widget build(BuildContext context) {
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
                      decoration: InputDecoration(
                        labelText: 'Descrição da categoria',
                        hintText: 'Ex: Alimentação',
                      ),
                      onChanged: (value) {},
                    ),
                    ColorPicker(),
                    IconPicker(),
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
                  onPressed: null,
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
