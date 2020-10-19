import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {

  final String receivedText;

  const DisplayScreen({
    @required this.receivedText
});

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
          color: Colors.cyanAccent,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(receivedText,
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