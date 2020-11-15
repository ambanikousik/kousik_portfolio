import 'package:flutter/material.dart';
import 'package:kousik_portfolio/presentation/home_screen.dart';
import 'package:styled_widget/styled_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: HomeScreen(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
