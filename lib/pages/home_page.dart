// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo/components/dialog_box.dart';
import 'package:todo/components/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List todoList = [
    {
      "taskName": "Watch tutorial",
      "taskCompleted": false,
    },
    {
      "taskName": "Eat food",
      "taskCompleted": false,
    }
  ];

  void handleCheckboxChange(bool? value, int index) {
    setState(() {
      todoList[index]["taskCompleted"] = !todoList[index]["taskCompleted"];
    });
  }

  void handleFloatingBtnClicked() {
    showDialog(
      context: context, 
      builder: (context) => DialogBox(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
        centerTitle: true,
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 5.0),
              child: Icon(Icons.info),
            ),
          )
        ]
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: handleFloatingBtnClicked,
        elevation: 0,
        highlightElevation: 0,
        child: Icon(Icons.add),
      ),

      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: todoList[index]["taskName"],
            taskCompleted: todoList[index]["taskCompleted"],
            onChanged: (value) => handleCheckboxChange(value, index),
          );
        }
      ),
    );
  }
}