// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: Center(
        child: Text("Profile Page",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}