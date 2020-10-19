
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/router.gr.dart';
import 'package:flutter/material.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ExtendedNavigator<SampleAppRouter>(
        router: SampleAppRouter(),
      ),
    );
  }
}

