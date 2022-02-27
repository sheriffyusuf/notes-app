import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/router/router.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.red, // transparent status bar
      statusBarIconBrightness: Brightness.dark // dark text for status bar
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF2E7D32),
    ));
    return ProviderScope(
      child: MaterialApp.router(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: FlexThemeData.light(transparentStatusBar: true),
          darkTheme: FlexThemeData.dark(),
          themeMode: ThemeMode.light,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate
          //     home: const MyHomePage(title: 'Todo App'),
          ),
    );
  }
}
