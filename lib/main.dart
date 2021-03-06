import 'package:flutter/material.dart';
import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
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
    var questions = [
      'what\'s your favorite color',
      'what\'s your favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App1'),
          backgroundColor: Colors.amberAccent,
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 111'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 222'),
              onPressed: () => print('Answer 2 Chosen'),
            ),
            RaisedButton(
              child: Text('Answer 333'),
              onPressed: () {
                //...
                print('Answer 3 Chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
