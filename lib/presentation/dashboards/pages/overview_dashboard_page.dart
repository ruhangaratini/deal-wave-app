import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../shared/extensions/get_text_theme_extension.dart';
import '../../shared/widgets/buttons/base_button.dart';
import '../../shared/widgets/cards/base_card.dart';
import '../../shared/widgets/layout/base_page_header.dart';
import '../../shared/widgets/loaders/shimmer_loading.dart';
import '../providers/overview_dashboard_page_provider.dart';
import '../widgets/cards/transaction_list_card.dart';
import '../widgets/charts/revenue_chart.dart';
import '../widgets/charts/sales_chart.dart';

const double _kCardMinWidth = 250;
const double _kChartCardMinWidth = 400;
const EdgeInsets _kCardPadding = EdgeInsets.all(20);
const int _kNumberOfColumns = 2;
const int _kOverflowLayoutWidth = 1200;

class OverviewDashboardPage extends StatelessWidget {
  const OverviewDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OverviewDashboardPageProvider(),
      child: _OverviewDashboardPage(),
    );
  }
}

class _OverviewDashboardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OverviewDashboardPageState();
}

class _OverviewDashboardPageState extends State<_OverviewDashboardPage> {
  @override
  void initState() {
    context.read<OverviewDashboardPageProvider>().init();
    super.initState();
  }

  Widget _buildDesktopLayout(OverviewDashboardPageProvider provider) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: ShimmerLoading(
            isLoading: provider.isLoading,
            child: _MainBoard(revenueChartData: provider.revenueChartData),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 1,
          child: ShimmerLoading(
            isLoading: provider.isLoading,
            child: _SideBoard(),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildMobileLayout(OverviewDashboardPageProvider provider) {
    return [
      ShimmerLoading(
        isLoading: provider.isLoading,
        child: _MainBoard(revenueChartData: provider.revenueChartData),
      ),
      ShimmerLoading(isLoading: provider.isLoading, child: _SideBoard()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<OverviewDashboardPageProvider>(
      builder: (context, value, child) {
        return LayoutBuilder(
          builder: (context, constraints) {
            final isOverflowing = constraints.maxWidth < _kOverflowLayoutWidth;

            return Shimmer(
              child: ListView(
                padding: const EdgeInsets.all(24),
                children: [
                  BasePageHeader(title: 'Home'),
                  if (isOverflowing)
                    ..._buildMobileLayout(value)
                  else
                    _buildDesktopLayout(value),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class _MainBoard extends StatelessWidget {
  final List<BarChartGroupData> revenueChartData;
  final transctions = List.filled(10, 1);

  _MainBoard({required this.revenueChartData});

  double _calculateChartCardSize(BoxConstraints constraints) {
    if (constraints.maxWidth / _kNumberOfColumns < _kChartCardMinWidth) {
      return constraints.maxWidth;
    }
    return constraints.maxWidth / _kNumberOfColumns;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final chartCardWidth = _calculateChartCardSize(constraints);

        return Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: constraints.maxWidth ~/ (_kCardMinWidth + 10),
                  childAspectRatio: 1.6,
                ),
                children: [
                  BaseCard(
                    padding: _kCardPadding,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Atualizações',
                            style: theme.text.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  BaseCard(
                    padding: _kCardPadding,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Metas', style: theme.text.bodyLarge),
                        ),
                      ],
                    ),
                  ),
                  BaseCard(
                    padding: _kCardPadding,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Resultado Líquido',
                            style: theme.text.bodyLarge,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('\$ ', style: theme.text.bodyMediumBold),
                            Text('193.000', style: theme.text.titleMedium),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Icon(
                              Icons.trending_up_rounded,
                              color: Colors.green,
                            ),
                            Text(
                              ' +35% do mês passado',
                              style: theme.text.bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  BaseCard(
                    padding: _kCardPadding,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Retorno Total',
                            style: theme.text.bodyLarge,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('\$ ', style: theme.text.bodyMediumBold),
                            Text('83.000', style: theme.text.titleMedium),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Icon(
                              Icons.trending_down_rounded,
                              color: Colors.red,
                            ),
                            Text(
                              ' -16% do mês passado',
                              style: theme.text.bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Wrap(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: chartCardWidth),
                  child: BaseCard(
                    padding: _kCardPadding,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Transações',
                            style: theme.text.bodyLarge,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ...transctions.map((item) {
                          return Padding(
                            padding: const EdgeInsets.all(8),
                            child: TransactionListCard(),
                          );
                        }),
                      ],
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: chartCardWidth),
                  child: Column(
                    children: [
                      BaseCard(
                        padding: _kCardPadding,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Receita',
                                style: theme.text.bodyLarge,
                              ),
                            ),
                            const SizedBox(height: 40),
                            AspectRatio(
                              aspectRatio: 2,
                              child: RevenueChart(data: revenueChartData),
                            ),
                          ],
                        ),
                      ),
                      BaseCard(
                        padding: _kCardPadding,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Vendas',
                                style: theme.text.bodyLarge,
                              ),
                            ),
                            const SizedBox(height: 40),
                            AspectRatio(aspectRatio: 2, child: SalesChart()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _SideBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BaseCard(
      padding: _kCardPadding,
      child: Column(
        children: [
          Text('Desempenho', style: theme.text.bodyLarge),
          const SizedBox(height: 5),
          const Divider(),
          AspectRatio(
            aspectRatio: 1,
            child: PieChart(
              PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 40,
                sections: [
                  PieChartSectionData(
                    value: 33,
                    color: Colors.red,
                    titleStyle: theme.text.bodyContrastLarge,
                    badgeWidget: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 16,
                      child: Text('33%', style: theme.text.labelMedium),
                    ),
                  ),
                  PieChartSectionData(
                    value: 52,
                    color: Colors.blue,
                    titleStyle: theme.text.bodyContrastLarge,
                    badgeWidget: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 16,
                      child: Text('52%', style: theme.text.labelMedium),
                    ),
                  ),
                  PieChartSectionData(
                    value: 21,
                    color: Colors.orange,
                    titleStyle: theme.text.bodyContrastLarge,
                    badgeWidget: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 16,
                      child: Text('21%', style: theme.text.labelMedium),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            'Lore ipsum Lore ipsum Lore ipsum Lore ipsum Lore ipsum Lore ipsum Lore ipsum Lore ipsum',
            style: theme.text.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          BaseButton(
            onPressed: () {},
            child: Text('Relatórios', style: theme.text.bodyContrastMedium),
          ),
        ],
      ),
    );
  }
}
