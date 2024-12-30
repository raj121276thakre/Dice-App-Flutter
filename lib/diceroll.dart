import 'dart:math';

import 'package:dice_app/main.dart';
import 'package:flutter/material.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll(this.colors, {super.key});
  final List<Color> colors;

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  var diceNumber = 1;
  var randomizer = Random();

  void rollDice() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$diceNumber.png',
              width: 200,
            ),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton(
              onPressed: rollDice,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Roll Dice",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
