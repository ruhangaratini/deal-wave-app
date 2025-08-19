import 'package:go_router/go_router.dart';

import '../presentation/dashboards/pages/home_dashboard_page.dart';
import '../presentation/login/pages/login_page.dart';
import '../presentation/orders/pages/orders_page.dart';
import '../presentation/products/pages/products_page.dart';
import '../shared/widgets/layout/base_layout.dart';

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
                builder: (context, state) => HomeDashboardPage(),
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
