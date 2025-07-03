import 'package:balancei_app/domain/dtos/transfer.dart';
import 'package:balancei_app/domain/entities/category/category_entity.dart';
import 'package:balancei_app/domain/valdiations/transfer_validator.dart';
import 'package:balancei_app/router/routers.dart';
import 'package:balancei_app/ui/home/viewmodel/home_viewmodel.dart';
import 'package:balancei_app/ui/incoming/viewmodel/add_incoming_viewmodel.dart';
import 'package:balancei_app/ui/utils/buttons/loading_button.dart';
import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:balancei_app/ui/utils/fields/category_field.dart';
import 'package:balancei_app/ui/utils/fields/switch_form_field.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddIncomingScreen extends ConsumerStatefulWidget {
  const AddIncomingScreen({super.key});

  @override
  ConsumerState<AddIncomingScreen> createState() => _AddIncomingScreenState();
}

class _AddIncomingScreenState extends ConsumerState<AddIncomingScreen> {
  late final viewModel = ref.read(addIncomingViewModelProvider.notifier);
  late final homeNotifier = ref.read(homeViewModelProvider.notifier);

  final currencyFormatter = CurrencyTextInputFormatter.currency(
    locale: 'pt-BR',
    decimalDigits: 2,
    symbol: 'R\$ ',
  );

  final validator = TransferValidator();

  bool isValid(TransferDTO dto) {
    return validator.validate(dto).isValid;
  }

  @override
  void initState() {
    super.initState();
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
                        labelText: 'Titulo',
                        hintText: 'Ex: Salário, Freelance, etc.',
                      ),
                      onChanged: (value) => viewModel.title = value,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: validator.byField(state.dto, 'title'),
                      keyboardType: TextInputType.text,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Valor da receita',
                        hintText: 'R\$ 0,00',
                      ),
                      onChanged: (_) {
                        final doubleValue =
                            currencyFormatter.getUnformattedValue().toDouble();
                        viewModel.amount = doubleValue;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: validator.byField(state.dto, 'amount'),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        currencyFormatter,
                      ],
                    ),
                    SwitchFormField(
                      labelText: 'Recebido',
                      value: state.dto.isCompleted,
                      onChanged: (value) => viewModel.isCompleted = value,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Descrição',
                        hintText: 'Ex: Pagamento de freelance mensal',
                      ),
                      onChanged: (value) => viewModel.description = value,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: validator.byField(state.dto, 'description'),
                      keyboardType: TextInputType.text,
                    ),
                    state.categories.when(
                      data: (categories) {
                        return CategoryField(
                          data: _mapCategoriesToFieldData(
                              categories, state.dto.category?.id),
                        );
                      },
                      loading: () => const SizedBox.shrink(),
                      error: (error, stackTrace) {
                        HomeRoute().push(context);
                        return SizedBox.shrink();
                      },
                    ),
                    SwitchFormField(
                      labelText: 'Ganho recorrente',
                      value: state.dto.isRecurring,
                      onChanged: (value) => viewModel.isRecurring = value,
                    ),
                  ],
                ),
              ),
              LoadingButton(
                label: 'Cadastrar',
                enabled: isValid(state.dto),
                onPressed: viewModel.addIncoming,
                errorMessage: 'Erro ao cadastrar receita',
                onSuccess: () {
                  homeNotifier.fetchTransfers();
                  context.pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<CategoryFieldData> _mapCategoriesToFieldData(
      List<CategoryEntity> categories, int? selectedCategoryId) {
    return categories
        .map((category) => CategoryFieldData(
            name: category.description,
            color: Color(category.colorHex),
            icon: IconData(
              category.iconCodePoint,
              fontFamily: 'MaterialIcons',
            ),
            isSelected: selectedCategoryId == category.id,
            onTap: () {
              viewModel.category = category;
            }))
        .toList();
  }
}
