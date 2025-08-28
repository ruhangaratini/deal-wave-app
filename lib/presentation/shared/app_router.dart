import 'package:go_router/go_router.dart';

import '../dashboards/pages/overview_dashboard_page.dart';
import '../login/pages/login_page.dart';
import '../orders/pages/orders_page.dart';
import '../products/pages/products_page.dart';
import 'widgets/layout/base_layout.dart';

class AppRouter {
  final routes = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => LoginPage(),
        routes: [
          ShellRoute(
            builder: (context, state, child) => BaseLayout(child: child),
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) => OverviewDashboardPage(),
              ),
              GoRoute(
                path: '/products',
                builder: (context, state) => ProductsPage(),
              ),
              GoRoute(
                path: '/orders',
                builder: (context, state) => OrdersPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
