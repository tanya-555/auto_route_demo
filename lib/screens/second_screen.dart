import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  void _goBackToHome(BuildContext context) {
    ExtendedNavigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.yellowAccent,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text('You are on second screen!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  child: Text('Go Back'),
                  onPressed: () {
                    _goBackToHome(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}