import 'dart:math';

import 'package:flutter/material.dart';

class Homework1210 extends StatefulWidget {
  const Homework1210({super.key});

  @override
  State<Homework1210> createState() => _Homework1210State();
}

class _Homework1210State extends State<Homework1210> {
  var currentDice = 1;

  void rollDice() {
    setState(() {
      currentDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.yellow],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/dice-$currentDice.png'),
          TextButton(onPressed: rollDice, child: const Text('Roll Dice')),
        ],
      ),
    );
  }
}
