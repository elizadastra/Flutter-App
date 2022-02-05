import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: const Text('First Screen of My apI'),
        backgroundColor: Colors.blue.shade200,
        titleTextStyle: const TextStyle(color: Colors.black),
      ),
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    color: Colors.red.shade300,
                    margin: const EdgeInsets.only(left: 45, top: 20),
                    child: const Text('1'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(40),
                    color: Colors.yellow.shade300,
                    margin: const EdgeInsets.only(left: 35),
                    child: const Text('2'),
                  ),
                  Container(
                    color: Colors.green.shade300,
                    padding: const EdgeInsets.all(50),
                    margin: const EdgeInsets.only(left: 25),
                    child: const Text('3'),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    color: Colors.red.shade300,
                    child: const Text('1'),
                    margin: const EdgeInsets.only(left: 8.5),
                  ),
                  Container(
                    padding: const EdgeInsets.all(40),
                    color: Colors.yellow.shade300,
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text('2'),
                  ),
                  Container(
                    color: Colors.green.shade300,
                    padding: const EdgeInsets.all(50),
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text('3'),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    color: Colors.red.shade300,
                    child: const Text('1'),
                    margin: const EdgeInsets.only(left: 8.5),
                  ),
                  Container(
                    padding: const EdgeInsets.all(40),
                    color: Colors.yellow.shade300,
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text('2'),
                  ),
                  Container(
                    color: Colors.green.shade300,
                    padding: const EdgeInsets.all(50),
                    margin: const EdgeInsets.only(left: 10, bottom: 20),
                    child: const Text('3'),
                  ),
                ],
              ),
            ]),
        // ]),
      ),
    ));
  }
}
