import 'package:flutter/material.dart';
import 'package:actual_project/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      //for the app
      home: Scaffold(
        //for the screen
        backgroundColor: Colors.cyanAccent,
        body: GradientContainer(),
      ),
    ),
  );
}
