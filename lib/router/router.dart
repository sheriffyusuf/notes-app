import 'package:go_router/go_router.dart';
import 'package:todo_app/pages/dashboard/view/dashboard_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const DashboardPage(),
    ),
    /* GoRoute(
      path: '/page2',
      builder: (context, state) => const Page2Screen(),
    ), */
  ],
);
