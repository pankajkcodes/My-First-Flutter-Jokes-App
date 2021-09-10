// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var count = 0;
  var jokes = [
    'Learn programming to understand programming jokes.',
    'Code never lies,comments sometimes do.',
    'You are semicolons to my Statements',
    'Programming is 1% writing code and 99% understanding why its not working',
    'I told him I cound not open jar. He told me to download java',
    'Comparing java and javascript is same as comparing car and carpet',
    'Golden rule of programming - If it works dont touch it.'
  ];
  void increamentCount() {
    setState(() {
      if (count == jokes.length - 1) {
        count = 0;
      } else {
        count = count + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Flutter Jokes App'),
          backgroundColor: Colors.pink,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.pink[100],
            border: Border.all(color: Colors.black),
          ),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          child: Text(
            jokes[count],
            style: TextStyle(fontSize: 20),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increamentCount,
          child: const Icon(
            Icons.refresh,
            size: 50,
          ),
          backgroundColor: Colors.pink[700],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
