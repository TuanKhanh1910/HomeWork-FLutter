import 'package:flutter/material.dart';
import 'package:widget_project/homework2110/widgets/homework_action_button.dart';
import 'package:widget_project/homework2110/widgets/homework_header.dart';
import 'package:widget_project/homework2110/widgets/homework_task_list.dart';

class Homework2110 extends StatefulWidget {
  const Homework2110({super.key});

  @override
  State<Homework2110> createState() => _Homework2110State();
}

class _Homework2110State extends State<Homework2110> {
  var tasksDone = 0;

  void increaseTasksDone() {
    setState(() {
      tasksDone++;
    });
  }

  void resetTasksDone() {
    setState(() {
      tasksDone = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 36),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF4158B5), Color(0xFF00A092)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 70),
          HomeworkHeader(tasksDone: tasksDone),
          const SizedBox(height: 62),
          HomeworkTaskList(onTaskPressed: increaseTasksDone),
          const SizedBox(height: 54),
          HomeworkActionButton(
            icon: Icons.send_rounded,
            label: 'Submit & reset',
            onPressed: resetTasksDone,
          ),
        ],
      ),
    );
  }
}
