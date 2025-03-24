import 'package:flutter/material.dart';
import 'dart:math';

final randomzier = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  String diceImage = 'assets/dice-images/dice-1.png';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            diceImage,
            height: 200,
          ),
          SizedBox(
            height: 8,
          ),
          TextButton(
            onPressed: () {
              setState(
                () {
                  int diceState = randomzier.nextInt(6) + 1;
                  diceImage = 'assets/dice-images/dice-$diceState.png';
                },
              );
            },
            style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 183, 231, 8)),
            child: Text(
              "Roll Dice",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
