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
          body: TextFormField(
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[a-z]'))
            ],
        decoration: InputDecoration(
            icon: Icon(Icons.person),
            hintText: 'What is your name',
            labelText: 'Name*'),
        onSaved: (String? value) {
          setState(() {});
        },
        validator: (String? value) {
          return (value != null && value.contains('@')
              ? 'Don\'t use a @ char.'
              : null);
        },
      )),
    );
  }
}
