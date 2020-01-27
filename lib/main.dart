import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer Chosen!");
  }

  @override
  Widget build(BuildContext context) {
    var directions = ["Which side best represents you most of the time?"];
    var questions = [
      "How do you get your energy?",
      "How do you see the world & gather information?",
      "How do you make your decisions?",
      "How much do you like to plan ahead?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [
            Text("The Question!"),
            RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion),
            RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion),
            RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
