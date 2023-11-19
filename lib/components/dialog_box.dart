// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:todo/components/todo_button.dart";

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Icon(Icons.create, size: 16),
          ),
          Text("Create a Todo",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.orange[100],
      elevation: 0,
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type in a new one"
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TodoButton(
                  text: "Save",
                  onPressed: (){},
                ),

                SizedBox(width: 10),

                TodoButton(
                  text: "Cancel",
                  onPressed: (){},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}