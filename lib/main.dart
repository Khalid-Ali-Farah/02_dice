import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Dice',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var diceRightNumber = 1;
  var diceleftNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  diceRightNumber = Random().nextInt(6) + 1;
                  diceleftNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$diceleftNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  diceleftNumber = Random().nextInt(6) + 1;
                  diceRightNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$diceRightNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
