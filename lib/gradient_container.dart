import 'package:dice_roller/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colorsList;
  const GradientContainer({super.key, required this.colorsList});
  GradientContainer.blue({super.key})
      : colorsList = [
          const Color.fromARGB(255, 58, 129, 187),
          const Color.fromARGB(255, 39, 207, 222),
        ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorsList,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: DiceRoller(),
    );
  }
}
