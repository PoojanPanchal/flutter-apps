import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
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
      'What\'s your favorite color?',
      'Which animal do you like?',
    ];
    var materialApp = MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
      ),
      body: Column(
        children: [
          Question(
            questions[_questionIndex],
          ),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ],
      ),
    ));
    return materialApp;
  }
}
