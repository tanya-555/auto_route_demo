import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Container(
        child: Text('You are on second screen!'),
        decoration: BoxDecoration(
            color: Colors.yellow
        ),
      ),
    );
  }
  
}