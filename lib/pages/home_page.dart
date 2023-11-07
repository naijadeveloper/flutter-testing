// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],

      // appBar: AppBar(
      //   backgroundColor: Colors.deepOrange[500],
      //   title: Text("Homing"),
      //   centerTitle: true,
      //   elevation: 0,
      // ),

      body: Center(
        child: Text("Home Page",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}