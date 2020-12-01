import 'package:flutter/material.dart';
import 'home_page.dart' deferred as home;

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  factory SplashScreen.loadData() {
    return const SplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    home.loadLibrary().then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => home.HomePage()),
      );
    });

    return const Scaffold(
      body: Center(
        child: Text(
          "Welcome",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
