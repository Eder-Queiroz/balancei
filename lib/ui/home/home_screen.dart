import 'package:balancei_app/ui/home/components/transaction_card.dart';
import 'package:balancei_app/ui/home/components/visibility_button.dart';
import 'package:balancei_app/ui/home/viewmodel/home_viewmodel.dart';
import 'package:balancei_app/ui/utils/common_spacing.dart';
import 'package:balancei_app/ui/utils/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:result_dart/result_dart.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late final homeViewModel = ref.read(homeViewModelProvider.notifier);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      homeViewModel.fetchTransfers();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeViewModelProvider);
    final textTheme = Theme.of(context).textTheme;
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.only(
            bottom: CommonSpacing.small,
          ),
          sliver: SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 210,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                horizontal: CommonSpacing.large,
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color(0xFF65558F),
                    Color(0xFFD0BCFF),
                  ])),
              child: Text.rich(
                style: textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
                TextSpan(
                  text: 'Bem-vindo ao ',
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Balancei:',
                      style: textTheme.titleLarge!.copyWith(
                        color: Color(0XFFFFD8E4),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '\norganize suas finanças com facilidade.',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        state.summary.when(
          data: (value) {
            final income = value.totalIncome;
            final expense = value.totalExpense;
            final balance = value.totalBalance;

            return SliverPersistentHeader(
              pinned: true,
              delegate: _SliverHeaderDelegate(
                minHeight: 120,
                maxHeight: 120,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(CommonSpacing.medium),
                    child: Column(
                      spacing: CommonSpacing.small,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: GestureDetector(
                                onTap: () async {
                                  final startDate =
                                      state.selectedDateFilter.startDate;

                                  final pickedDate = await context
                                      .showMonthPicker(startDate: startDate)
                                      .fold(
                                        (success) => success,
                                        (error) => startDate,
                                      );

                                  homeViewModel.selectDate(pickedDate);
                                  await homeViewModel.fetchTransfers();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      DateFormat.MMMM('pt_BR').format(
                                          state.selectedDateFilter.startDate),
                                      style: textTheme.headlineSmall,
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            VisibilityButton(
                              isVisible: state.isVisibleValues,
                              onPressed: () {
                                homeViewModel.toggleVisibleValues();
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Saldo',
                                  style: textTheme.headlineSmall!.copyWith(
                                    color: Color(0xFF79747E),
                                  ),
                                ),
                                Text(
                                  homeViewModel.formattedValue(balance),
                                  style: textTheme.headlineSmall,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Receita',
                                  style: textTheme.headlineSmall!.copyWith(
                                    color: Color(0xFF79747E),
                                  ),
                                ),
                                Text(
                                  homeViewModel.formattedValue(income),
                                  style: textTheme.headlineSmall,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Gastos',
                                  style: textTheme.headlineSmall!.copyWith(
                                    color: Color(0xFF79747E),
                                  ),
                                ),
                                Text(
                                  homeViewModel.formattedValue(expense),
                                  style: textTheme.headlineSmall,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          error: (error, stackTrace) {
            return SliverToBoxAdapter(
              child: Center(
                child: Text('Erro ao carregar dados'),
              ),
            );
          },
          loading: () {
            return SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
        state.summary.when(
          data: (value) {
            final transaction = value.transactions;

            return SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: CommonSpacing.large,
                vertical: CommonSpacing.medium,
              ),
              sliver: SliverList.separated(
                itemCount: transaction.length + 1,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: CommonSpacing.small),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Text('transações recentes',
                        style: textTheme.headlineMedium);
                  }

                  final t = transaction[index - 1];
                  return TransactionCard(
                    title: t.title,
                    description: t.description,
                    value: homeViewModel.formattedValue(t.amount),
                    date: t.date,
                    color: t.category.colorHex,
                    icon: IconData(
                      t.category.iconCodePoint,
                      fontFamily: 'MaterialIcons',
                    ),
                    isIncoming: t.isIncome,
                  );
                },
              ),
            );
          },
          error: (error, stackTrace) {
            return SliverToBoxAdapter(
              child: Center(
                child: Text('Erro ao carregar dados'),
              ),
            );
          },
          loading: () {
            return SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ],
    );
  }
}

class _SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  _SliverHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    double paddingValue = (maxExtent - shrinkOffset) / maxExtent * 16;
    return SizedBox.expand(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: paddingValue.clamp(0.0, 16.0)),
          child: child,
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(_SliverHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
