import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/pages/dashboard/provider/bottom_bar_provider.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomBarState = ref.watch(bottomBarProvider);
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: bottomBarState,
            onTap: (value) => ref.read(bottomBarProvider.state).state = value,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Todos'),
              BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Todos'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: 'Settings'),
            ]),
        body: Column());
  }
}
