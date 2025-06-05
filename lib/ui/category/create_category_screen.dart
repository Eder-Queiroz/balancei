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
          child: Form(
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
        ),
      ),
    );
  }
}
