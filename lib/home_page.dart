/// Import [Random] from package 'dart:math'.
import 'dart:math' show Random;

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Random _random = Random();

  ///Init variable [_color] white value.
  Color _color = Color(0xFFFFFFFF);

  ///Method to set random color for privat [_color].
  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  ///Method to set default value for [_color].
  void defaultColor() {
    setState(() {
      _color = Color(0xFFFFFFFF);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: InkWell(
          onTap: changeColor,
          onLongPress: defaultColor,
          child: Container(
            alignment: Alignment.center,
            color: _color,
            child:const Text(
              'Hey there',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
