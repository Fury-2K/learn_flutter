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
  int leftDiceValueNumber = 1;
  int rightDiceValueNumber = 1;

  void changeDiceNumber(int diceNumber) {
    leftDiceValueNumber = Random().nextInt(6) + 1;
    rightDiceValueNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
        children: [
          Text(
            "Roll the dice!!",
            style: TextStyle(
              wordSpacing: 8,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    child: Image.asset('images/dice$leftDiceValueNumber.png'),
                    onPressed: () {
                      // diceValueNumber = 5;
                      setState(() {
                        changeDiceNumber(leftDiceValueNumber);
                      });
                    },
                  ),
                ),
                SizedBox(width: 16,),
                Expanded(
                  child: TextButton(
                    child: Image.asset('images/dice$rightDiceValueNumber.png'),
                    onPressed: () {
                      // diceValueNumber = 5;
                      setState(() {
                        changeDiceNumber(rightDiceValueNumber);
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

