import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Todos'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Todos'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Todos'),
        ]),
        body: Column());
  }
}
