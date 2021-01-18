import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s youre favourite place?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic Quiz App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 01'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 02'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 03'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
