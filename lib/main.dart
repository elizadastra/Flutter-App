import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '',
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.black,
              ),
              title: const Text('First Screen of My apI'),
              backgroundColor: Colors.white,
              titleTextStyle: const TextStyle(color: Colors.black),
            ),
            body: Center(
              child: Container(
                child: const Align(child: Text('Hello from hot reload')),
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            )));
  }
}
