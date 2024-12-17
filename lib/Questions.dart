import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  const Questions({super.key, required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 27),
        textAlign: TextAlign.center,
      ),
    );
  }
}
