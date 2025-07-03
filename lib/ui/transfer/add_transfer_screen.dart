import 'package:balancei_app/domain/dtos/transfer.dart';
import 'package:balancei_app/domain/entities/category/category_entity.dart';
import 'package:balancei_app/domain/enums/transaction_type_enum.dart';
import 'package:balancei_app/domain/valdiations/transfer_validator.dart';
import 'package:balancei_app/router/routers.dart';
import 'package:balancei_app/ui/home/viewmodel/home_viewmodel.dart';
import 'package:balancei_app/ui/transfer/texts/transaction_text_strategy.dart';
import 'package:balancei_app/ui/transfer/viewmodel/add_transfer_viewmodel.dart';
import 'package:balancei_app/ui/utils/buttons/loading_button.dart';
import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:balancei_app/ui/utils/fields/category_field.dart';
import 'package:balancei_app/ui/utils/fields/switch_form_field.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddTransferScreen extends ConsumerStatefulWidget {
  final TransactionTypeEnum type;
  const AddTransferScreen({super.key, required this.type});

  @override
  ConsumerState<AddTransferScreen> createState() => _AddTransferScreenState();
}

class _AddTransferScreenState extends ConsumerState<AddTransferScreen> {
  late final transferProvider = addTransferViewModelProvider(widget.type);
  late final viewModel = ref.read(transferProvider.notifier);
  late final homeNotifier = ref.read(homeViewModelProvider.notifier);
  late final texts = TransactionTextStrategy.fromType(widget.type);

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
    final state = ref.watch(transferProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(texts.screenTitle),
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
                        labelText: texts.titleLabel,
                        hintText: texts.titleHint,
                      ),
                      onChanged: (value) => viewModel.title = value,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: validator.byField(state.dto, 'title'),
                      keyboardType: TextInputType.text,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: texts.amountLabel,
                        hintText: texts.amountHint,
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
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: texts.descriptionLabel,
                        hintText: texts.descriptionHint,
                      ),
                      onChanged: (value) => viewModel.description = value,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: validator.byField(state.dto, 'description'),
                      keyboardType: TextInputType.text,
                    ),
                    SwitchFormField(
                      labelText: texts.isCompletedLabel,
                      value: state.dto.isCompleted,
                      onChanged: (value) => viewModel.isCompleted = value,
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
                      labelText: texts.isRecurringLabel,
                      value: state.dto.isRecurring,
                      onChanged: (value) => viewModel.isRecurring = value,
                    ),
                  ],
                ),
              ),
              LoadingButton(
                label: texts.submitButtonText,
                enabled: isValid(state.dto),
                onPressed: viewModel.addIncoming,
                errorMessage: texts.errorMessage,
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
