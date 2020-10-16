// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:auto_route_demo/screens/home_screen.dart';
import 'package:auto_route_demo/screens/second_screen.dart';
import 'package:auto_route_demo/screens/third_screen.dart';
import 'package:auto_route/transitions_builders.dart';

class AppRouter {
  static const homeScreen = '/';
  static const secondScreen = '/second-screen';
  static const thirdScreen = '/third-screen';
  static GlobalKey<NavigatorState> get navigatorKey =>
      getNavigatorKey<AppRouter>();
  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRouter.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
          settings: settings,
        );
      case AppRouter.secondScreen:
        return PageRouteBuilder(
          pageBuilder: (ctx, animation, secondaryAnimation) => SecondScreen(),
          settings: settings,
        );
      case AppRouter.thirdScreen:
        return PageRouteBuilder(
          pageBuilder: (ctx, animation, secondaryAnimation) => ThirdScreen(),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          transitionDuration: Duration(milliseconds: 200),
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
