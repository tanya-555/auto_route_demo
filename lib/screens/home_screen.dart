import 'package:auto_route_demo/routes/router.gr.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  void _navigateToSecondScreen(BuildContext context)  {
    AppRouter.navigator.pushNamed(AppRouter.secondScreen);
  }

  void _navigateToThirdScreen(BuildContext context)  {
    AppRouter.navigator.pushNamed(AppRouter.thirdScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auto Route Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 70,
                  width: 150,
                  child: ElevatedButton(
                    child: Text('Second Screen'),
                    onPressed: () {_navigateToSecondScreen(context);},
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 150,
                  child: ElevatedButton(
                    child: Text('Third Screen'),
                    onPressed: () {_navigateToThirdScreen(context);},
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Enter text'
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
