// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class TodoTile extends StatelessWidget {

  const TodoTile({super.key, required this.taskName, required this.taskCompleted, required this.onChanged});

  final String taskName;
  final bool taskCompleted;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top:16),
      child: Container(
        padding: EdgeInsets.all(20),
        height: 70,
        decoration: BoxDecoration(
          color: Colors.orange[50],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.orange),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),

            Text(taskName,
              style: TextStyle(
                fontSize: 16,
                decoration: taskCompleted == true? TextDecoration.lineThrough : TextDecoration.none,
                decorationThickness: 2.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}