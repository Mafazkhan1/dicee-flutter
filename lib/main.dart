import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftImageNumber = 5;
  int rightImageNumber = 5;

  void getNumber() {
    leftImageNumber = Random().nextInt(6) + 1;
    rightImageNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  getNumber();
                });
              },
              child: Image.asset('images/dice$leftImageNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  getNumber();
                });
              },
              child: Image.asset('images/dice$rightImageNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
