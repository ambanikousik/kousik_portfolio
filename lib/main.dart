import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kousik_portfolio/infrastructure/portfolio_repository.dart';
import 'package:kousik_portfolio/presentation/pages/splash_screen.dart';

import 'no_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => PortfolioRepository(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rezaul Islam Kousik',
        theme: ThemeData.dark().copyWith(
            pageTransitionsTheme: NoTransitionsOnWeb(),
            textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
              primary: Colors.white70,
              textStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            )),
            textTheme: GoogleFonts.robotoTextTheme().copyWith(
              bodyText1: const TextStyle(color: Color(0xff828DAA)),
              bodyText2: const TextStyle(color: Color(0xff828DAA)),
            ),
            scaffoldBackgroundColor: const Color(0xff0A192F)),
        home: const SplashScreen(),
      ),
    );
  }
}
