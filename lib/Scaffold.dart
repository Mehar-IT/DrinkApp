import 'package:flutter/material.dart';
import 'package:test_widgets/Card.dart';
import 'main.dart';
//import 'package:test_widgets/Drawer.dart';
//import 'package:test_widgets/FloatActionButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          myColor,
          Colors.purpleAccent,
        ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Center(
            child: Text(
              'Cocktail App',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Carad(),
        // floatingActionButton: FlotActionButton(),
        // drawer: Drawer1(),
      ),
    );
  }
}
