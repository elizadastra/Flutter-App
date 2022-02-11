import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> items = ['A', 'B', 'C', 'D'];
  String _selectedItem = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: DropdownButton(
              isExpanded: true,
              iconSize: 30.0,
              style: const TextStyle(color: Colors.blue),
              hint: const Text(
                'Выберите элемент',
                style: TextStyle(color: Colors.blue),
              ),
              value: _selectedItem.isNotEmpty ? _selectedItem : null,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue!;
                });
              },
              items: items.map((item) {
                return DropdownMenuItem(
                  child: Text(item),
                  value: item,
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
