import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_route_demo/screens/display_screen.dart';
import 'package:auto_route_demo/screens/home_screen.dart';
import 'package:auto_route_demo/screens/second_screen.dart';
import 'package:auto_route_demo/screens/third_screen.dart';

@MaterialAutoRouter()
class $SampleAppRouter {

  @initial
  HomeScreen homeScreen;

  @CustomRoute()
  SecondScreen secondScreen;

  @CustomRoute(transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 200)
  ThirdScreen thirdScreen;

  @CustomRoute(transitionsBuilder: TransitionsBuilders.slideRight, durationInMilliseconds: 200)
  DisplayScreen displayScreen;

}

