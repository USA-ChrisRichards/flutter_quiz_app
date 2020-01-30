import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var directions = ['Which side best represents you most of the time?'];
    var questions = [
      {
        'questionText': 'How do you get your energy?',
        'answers': ['a', 'b', 'c', 'd']
      },
      {
        'questionText': 'How do you see the world & gather information?',
        'answers': ['1', '2', '3', '4']
      },
      {
        'questionText': 'How much do you like to plan ahead?',
        'answers': ['a', 'b', 'c', 'd']
      },
      {
        'questionText': 'How do you make your decisions?',
        'answers': ['a', 'b', 'c', 'd']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
