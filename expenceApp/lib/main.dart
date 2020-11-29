import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:intl/intl.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      title: 'New Shows',
      amount: 3000,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Stationary',
      amount: 120,
      date: DateTime.now(),
    ),
  ];

  // String titleInput;
  // String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Card(
              color: Colors.blue,
              child: Container(
                width: double.infinity,
                child: Text('Chart!'),
              ),
              elevation: 5,
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: titleController,
                    // onChanged: (val) => titleInput = val;,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                    // onChanged: (val) => amountInput  = val;,
                  ),
                  FlatButton(
                      onPressed: () {
                        print(titleController.text);
                      },
                      child: Text('Add Transaction'),
                      textColor: Colors.purple),
                ],
              ),
            ),
          ),
          Column(
            children: transaction.map((tx) {
              return Card(
                  child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Rs. " + tx.amount.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        tx.title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        DateFormat().format(tx.date),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ));
            }).toList(),
          ),
        ],
      ),
    );
  }
}
