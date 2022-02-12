import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int value = 0;

  // ignore: prefer_typing_uninitialized_variables
  var color;
  bool isClicked = false;
  int generateRandomNumber() {
    // Printing Random Number between 1 to 100 on Terminal Window.
    return Random().nextInt(100);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() {
                  value = generateRandomNumber()!;
                  isClicked = !isClicked;
                });
              },
              // child: const Text("Изменить"),
              backgroundColor: Colors.green,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Container(
                        width: 90.0,
                        height: 90.0,
                        color: isClicked ? Colors.red : Colors.green,
                        child: Text(value.toString())
                        ),
                  ),
                ]))));
  }
}
