import 'package:flutter/material.dart';

class _BadMyHomePageState extends State {

  var _counter = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '$_counter',
          style: Theme
            .of(context)
            .textTheme
            .display1,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(content: Text('message'))); //error
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class _MyHomePageState extends State {

  var _counter = 1;

  void _incrementCounter(){}

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ),
          Builder(builder: (context) { // this context's ancestor includes Scaffold
            return FloatingActionButton(
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(content: Text('message')));
                _incrementCounter();
              },
              child: Icon(Icons.add),
            );
          }),
        ]
      )
    );
  }
}
