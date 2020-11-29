import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kousik_portfolio/infrastructure/portfolio_repository.dart'
    deferred as repo;
import 'package:kousik_portfolio/presentation/router/router.gr.dart'
    deferred as router;
import 'package:auto_route/auto_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => repo.PortfolioRepository(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rezaul Islam Kousik',
        onGenerateRoute: router.AppRouter(),
        theme: ThemeData.dark().copyWith(
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
        builder: ExtendedNavigator.builder(
          router: router.AppRouter(),
          initialRoute: router.Routes.homePage,
        ),
      ),
    );
  }
}
