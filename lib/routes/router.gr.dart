// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/screens/home_screen.dart';
import 'package:auto_route_demo/screens/second_screen.dart';
import 'package:auto_route_demo/screens/third_screen.dart';
import 'package:auto_route_demo/screens/display_screen.dart';

abstract class AppRoute {
  static const homeScreen = '/';
  static const secondScreen = '/app/second-screen';
  static const thirdScreen = '/app/third-screen';
  static const displayScreen = '/app/display-screen';
  static const all = {
    homeScreen,
    secondScreen,
    thirdScreen,
    displayScreen,
  };
}

class SampleAppRouter extends RouterBase {
  @override
  Set<String> get allRoutes => AppRoute.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<SampleAppRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRoute.homeScreen:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomeScreen(),
          settings: settings,
        );
      case AppRoute.secondScreen:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (context, animation, secondaryAnimation) =>
              SecondScreen(),
          settings: settings,
        );
      case AppRoute.thirdScreen:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (context, animation, secondaryAnimation) =>
              ThirdScreen(),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          transitionDuration: const Duration(milliseconds: 200),
        );
      case AppRoute.displayScreen:
        if (hasInvalidArgs<DisplayScreenArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<DisplayScreenArguments>(args);
        }
        final typedArgs = args as DisplayScreenArguments;
        return PageRouteBuilder<dynamic>(
          pageBuilder: (context, animation, secondaryAnimation) =>
              DisplayScreen(receivedText: typedArgs.receivedText),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.slideRight,
          transitionDuration: const Duration(milliseconds: 200),
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//DisplayScreen arguments holder class
class DisplayScreenArguments {
  final String receivedText;
  DisplayScreenArguments({@required this.receivedText});
}
