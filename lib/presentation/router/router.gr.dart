// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/about/about.dart';
import '../pages/contact/contact.dart';
import '../pages/experience/experience.dart';
import '../pages/home_page.dart';
import '../pages/works/works.dart';

class Routes {
  static const String homePage = '/home-page';
  static const String about = '/About';
  static const String experience = '/Experience';
  static const String works = '/Works';
  static const String contact = '/Contact';
  static const all = <String>{
    homePage,
    about,
    experience,
    works,
    contact,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.about, page: About),
    RouteDef(Routes.experience, page: Experience),
    RouteDef(Routes.works, page: Works),
    RouteDef(Routes.contact, page: Contact),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    About: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => About(),
        settings: data,
      );
    },
    Experience: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Experience(),
        settings: data,
      );
    },
    Works: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Works(),
        settings: data,
      );
    },
    Contact: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Contact(),
        settings: data,
      );
    },
  };
}
