import 'package:auto_route_demo/routes/router.gr.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  void _navigateToSecondScreen(BuildContext context)  {
    AppRouter.navigator.pushNamed(AppRouter.secondScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auto Route Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('Second Screen'),
              color: Colors.yellowAccent,
              onPressed: () {_navigateToSecondScreen(context);},
            ),
          ],
        ),
      )
    );
  }
}
