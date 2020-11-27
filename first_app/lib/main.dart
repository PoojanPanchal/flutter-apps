import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your fav color?',
      'whic pet do you like?',
    ];
    var materialApp = MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
      ),
      body: Column(
        children: [
          Text("The question!"),
          RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: () => print('Answer 2 chosen!'),
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
        ],
      ),
    ));
    return materialApp;
  }
}
