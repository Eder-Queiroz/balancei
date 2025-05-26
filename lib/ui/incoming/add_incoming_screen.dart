import 'package:balancei_app/ui/utils/common_spacing.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Receita'),
        elevation: 2,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Padding(
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
                  labelText: 'Valor da receita',
                  hintText: 'R\$ 0,00',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CurrencyTextInputFormatter.currency(
                    locale: 'pt-BR',
                    decimalDigits: 2,
                    symbol: 'R\$ ',
                  ),
                ],
              ),
              SwitchFormField(
                labelText: 'Recebido',
                value: false,
                onChanged: (value) {},
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Descrição',
                  hintText: 'Ex: Salário, Freelance, etc.',
                ),
                keyboardType: TextInputType.text,
              ),
              SwitchFormField(
                labelText: 'Ganho recorrente',
                value: false,
                onChanged: (value) {},
              ),
              SwitchFormField(
                labelText: 'Repetir',
                value: false,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
