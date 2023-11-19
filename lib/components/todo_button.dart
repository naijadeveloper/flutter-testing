// ignore_for_file: prefer_const_constructor

import "package:flutter/material.dart";

class TodoButton extends StatelessWidget {
  const TodoButton({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      highlightElevation: 0,
      elevation: 0,
      child: Text(text),
    );
  }
}