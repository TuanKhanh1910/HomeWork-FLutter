import 'package:flutter/material.dart';

class HomeworkHeader extends StatelessWidget {
  const HomeworkHeader({required this.tasksDone, super.key});

  final int tasksDone;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.menu_book_rounded, color: Color(0xFFAFC6DE), size: 92),
        const SizedBox(height: 30),
        const Text(
          'Your homework',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 42,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 18),
        Text(
          'Tasks done: $tasksDone',
          style: const TextStyle(color: Color(0xFFB9CADA), fontSize: 22),
        ),
      ],
    );
  }
}
