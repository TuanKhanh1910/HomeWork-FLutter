import 'package:flutter/material.dart';

var gradientBackground = GradientBackground.red();
var activeLink = "assets/images/dice-1.png";

class GradientBackground extends StatefulWidget {
  const GradientBackground({
    super.key,
    required this.color1,
    required this.color2,
  });
  const GradientBackground.blue({
    super.key,
    this.color1 = Colors.blue,
    this.color2 = Colors.blueAccent,
  });
  const GradientBackground.red({
    super.key,
    this.color1 = Colors.red,
    this.color2 = Colors.yellow,
  });
  final Color color1;
  final Color color2;

  @override
  State<GradientBackground> createState() => _GradientBackgroundState();
}

class _GradientBackgroundState extends State<GradientBackground> {
  void rollDice() {
    setState(() {
      activeLink = "assets/images/dice-4.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.color1, widget.color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(activeLink),
          TextButton(onPressed: () => rollDice(), child: Text("Roll Dice")),
        ],
      ),
    );
  }
}
