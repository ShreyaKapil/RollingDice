import 'package:actual_project/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:actual_project/textstyle_widget.dart';

var startData = Alignment.topLeft;
var activeDiceImage = 'asset/images/dice-1.png';

class GradientContainer extends StatelessWidget {
  const GradientContainer({key}) : super(key: key);
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: Colors.accents,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(
        // for the center
        // child: TextStyleWidget("ok"),
        child: DiceRoller(),
      ),
    );
    //  throw UnimplementedError();
  }

  void rollDice() {
    activeDiceImage = 'asset/images/dice-4.png';
  }
}
