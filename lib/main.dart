import 'package:flutter/material.dart';
import 'package:flutter_first_app/Questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // List of questions

  // Variable to store the current message
  String displayedText = "Please select one of the questions";

  // Function to handle button presses
  var indextQuestion = 0;
  void onLoadTheFun() {
    setState(() {
      indextQuestion = indextQuestion + 1;
      if (indextQuestion == 4) indextQuestion = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questionsList = [
      "What is your name?",
      "What is your age?",
      "What is your job?",
      "What is your country?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
          backgroundColor: Color.fromARGB(1, 131, 40, 40),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Questions(questionText: questionsList[indextQuestion]),
            ElevatedButton(
              child: const Text("Question number one"),
              onPressed: () => onLoadTheFun(),
            ),
            ElevatedButton(
              child: const Text("Question number two"),
              onPressed: () => onLoadTheFun(),
            ),
            ElevatedButton(
              child: const Text("Question number three"),
              onPressed: () => onLoadTheFun(),
            ),
            ElevatedButton(
              child: const Text("Question number four"),
              onPressed: () => onLoadTheFun(),
            ),
          ],
        ),
      ),
    );
  }
}
