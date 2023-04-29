import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          TextFormField(
            inputFormatters: [
              // FilteringTextInputFormatter.allow(RegExp('[a-z]')),
              FilteringTextInputFormatter.allow(RegExp('[A-Z]'))
            ],
            decoration: InputDecoration(
                errorText: 'Error text',
                icon: Icon(Icons.person),
                hintText: 'What is your name',
                labelText: 'Name*'),
          ),
        ],
      )),
    );
  }
}
