import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 11, 76, 90),
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Color.fromARGB(255, 34, 112, 130),
        ),
        body: DicePage(),
       
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

void clickButton() {}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 2;

  void ChangeDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(

        children: [
         
          Expanded(
            child: TextButton(
                onPressed: () {
                  ChangeDice();
                },
                child: Image.asset('images/dice$leftDice.png')),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                ChangeDice();
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
            
          
          ),
       
        ],
      ),
    );
    
 
  }
}
