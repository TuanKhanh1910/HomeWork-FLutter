import 'package:flutter/material.dart';
import 'package:widget_project/homework2110/widgets/homework_action_button.dart';

class HomeworkTaskList extends StatelessWidget {
  const HomeworkTaskList({required this.onTaskPressed, super.key});

  final VoidCallback onTaskPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(28, 26, 28, 32),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.25),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          const Text(
            'Tasks',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 28),
          HomeworkActionButton(
            icon: Icons.calculate_rounded,
            label: 'Math',
            onPressed: onTaskPressed,
          ),
          const SizedBox(height: 20),
          HomeworkActionButton(
            icon: Icons.edit_rounded,
            label: 'English',
            onPressed: onTaskPressed,
          ),
          const SizedBox(height: 20),
          HomeworkActionButton(
            icon: Icons.science_rounded,
            label: 'Science',
            onPressed: onTaskPressed,
          ),
        ],
      ),
    );
  }
}
