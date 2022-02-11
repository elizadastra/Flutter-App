import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.purple),
    );
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blue.shade100,
            appBar: AppBar(
              title: const Text('First Screen of My apI'),
              backgroundColor: Colors.blue.shade200,
              titleTextStyle: const TextStyle(color: Colors.black),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(80.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      style: style,
                      onPressed: () {},
                      child: const Text('Нажми меня'),
                    ),
                    OutlineButton(
                      onPressed: () {},
                      child: const Text('OutlineButton'),
                    ),
                    TextButton(
                      style: style,
                      onPressed: () {},
                      child: const Text('Нажми меня'),
                    ),
                    IconButton(
                      splashColor: Colors.blue,
                      highlightColor: Colors.green,
                      color: Colors.blue,
                      iconSize: 48,
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: const Icon(Icons.laptop_mac),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        print('Pressed');
                      },
                      child: Text('BTN'),
                    ),
                    InkWell(
                        onTap: () {
                          print("InKwel Click");
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: const Text("Laptop"),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.green),
                        ))
                  ],
                ),
              ),
            )));
  }
}
