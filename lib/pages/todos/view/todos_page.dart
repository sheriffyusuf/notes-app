import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle.dark, // this makes status bar text color black
        //backgroundColor: Colors.white,
        title: Text('Todos'),
      ),
    );
  }
}
