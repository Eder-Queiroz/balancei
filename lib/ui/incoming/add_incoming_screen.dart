import 'package:balancei_app/domain/dtos/add_incoming.dart';
import 'package:balancei_app/domain/valdiations/add_incoming_validator.dart';
import 'package:balancei_app/ui/incoming/viewmodel/add_incoming_viewmodel.dart';
import 'package:balancei_app/ui/utils/common_radius.dart';
import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:balancei_app/ui/utils/fields/category_field.dart';
import 'package:balancei_app/ui/utils/fields/switch_form_field.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddIncomingScreen extends ConsumerStatefulWidget {
  const AddIncomingScreen({super.key});

  @override
  ConsumerState<AddIncomingScreen> createState() => _AddIncomingScreenState();
}

class _AddIncomingScreenState extends ConsumerState<AddIncomingScreen> {
  late final viewModel = ref.watch(addIncomingViewModelProvider.notifier);

  final currencyFormatter = CurrencyTextInputFormatter.currency(
    locale: 'pt-BR',
    decimalDigits: 2,
    symbol: 'R\$ ',
  );

  final validator = AddIncomingValidator();

  bool isValid(AddIncomingDTO dto) {
    return validator.validate(dto).isValid;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addIncomingViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Receita'),
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
                        labelText: 'Valor da receita',
                        hintText: 'R\$ 0,00',
                      ),
                      onChanged: (_) {
                        final doubleValue =
                            currencyFormatter.getUnformattedValue().toDouble();
                        viewModel.value = doubleValue;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: validator.byField(state, 'value'),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        currencyFormatter,
                      ],
                    ),
                    SwitchFormField(
                      labelText: 'Recebido',
                      value: state.received ?? false,
                      onChanged: (value) => viewModel.received = value,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Descrição',
                        hintText: 'Ex: Salário, Freelance, etc.',
                      ),
                      onChanged: (value) => viewModel.description = value,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: validator.byField(state, 'description'),
                      keyboardType: TextInputType.text,
                    ),
                    CategoryField(
                      data: [
                        CategoryFieldData(
                          name: 'Alimentação',
                          color: Colors.green,
                          icon: Icons.fastfood,
                          isSelected: true,
                        ),
                        CategoryFieldData(
                          name: 'Transporte',
                          color: Colors.blue,
                          icon: Icons.directions_car,
                        ),
                      ],
                    ),
                    SwitchFormField(
                      labelText: 'Ganho recorrente',
                      value: state.isRecurring ?? false,
                      onChanged: (value) => viewModel.isRecurring = value,
                    ),
                    SwitchFormField(
                      labelText: 'Repetir',
                      value: state.repeat ?? false,
                      onChanged: (value) => viewModel.repeat = value,
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
                  onPressed: isValid(state) ? () {} : null,
                  child: Text(
                    'Cadastrar',
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
