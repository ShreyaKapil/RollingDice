import 'package:flutter/material.dart';
import 'package:actual_project/textstyle_widget.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'asset/images/dice-1.png';

  @override
  Widget build(BuildContext context) {
    return Center(
      // for the center
      // child: TextStyleWidget("ok"),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage,
            width: 200,
          ),
          const SizedBox(
            height: 200,
          ),
          TextButton(
            onPressed: rollDice,
            child: TextStyleWidget("Rolled Dice"),
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(10)),
          )
        ],
      ),
    );
  }

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'asset/images/dice-$diceRoll.png';
    });
  }
}
