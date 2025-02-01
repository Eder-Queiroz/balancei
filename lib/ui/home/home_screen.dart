import 'package:balancei_app/ui/home/components/transaction_card.dart';
import 'package:balancei_app/ui/utils/commom_spacing.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 210,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    horizontal: CommomSpacing.large,
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
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  bottom: -60,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: CommomSpacing.medium,
                    ),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(CommomSpacing.medium),
                        child: Column(
                          spacing: CommomSpacing.small,
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Janeiro',
                                        style: textTheme.headlineSmall,
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.visibility_off,
                                  color: Color(0xFF79747E),
                                  size: 18,
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
                                      'R\$ ******',
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
                                      'R\$ ******',
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
                                      'R\$ ******',
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
                )
              ],
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: CommomSpacing.large,
                vertical: CommomSpacing.small,
              ),
              child: Column(
                spacing: CommomSpacing.small,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('transações recentes', style: textTheme.headlineMedium),
                  TransactionCard(
                    title: 'Inernet Residêncial',
                    description: 'Conta de internet.',
                    value: 100.00,
                    date: DateTime(2025, 01, 10),
                    color: 0xFF4F4CB0,
                    icon: Icons.language,
                  ),
                  TransactionCard(
                    title: 'Inernet Movel',
                    description: 'Conta de internet.',
                    value: 50.00,
                    date: DateTime(2025, 01, 10),
                    color: 0xFF4F4CB0,
                    icon: Icons.language,
                  ),
                  TransactionCard(
                    title: 'Cruchroll',
                    description: 'Streaming de anime.',
                    value: 20.00,
                    date: DateTime(2025, 01, 10),
                    color: 0xFFFF5F01,
                    icon: Icons.cast,
                  ),
                  TransactionCard(
                    title: 'Bolsa Faculdade',
                    description: 'Bolsa Iniciação Cien.',
                    value: 770.00,
                    date: DateTime(2025, 01, 10),
                    color: 0xFF00C48C,
                    icon: Icons.payment,
                    isIncoming: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
