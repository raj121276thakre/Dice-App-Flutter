import 'package:dice_app/diceroll.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<Color> colors = [
  const Color.fromARGB(255, 241, 232, 232),
  const Color.fromARGB(210, 221, 186, 186),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "Dice App ",
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.red,
        ),
        body: DiceRoll(colors),
      ),
    );
  }
}
