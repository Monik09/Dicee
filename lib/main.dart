import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(DicePage());
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1, rightDiceNumber = 1;

  void diceNumber() {
     setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                  rightDiceNumber = Random().nextInt(6) + 1;
                }); 
      //telling that we have changed the state of the object so that build can be called again

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red,
        ),
        body:      
    Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // flex :2,

            //child:Padding(
            //padding:  EdgeInsets.all(16.0),
            child: FlatButton(
              onPressed: () {
                diceNumber();
              },
              child: Image.asset('images/dice$leftDiceNumber.jpeg'),
            ),
            //  Image(
            //   image: AssetImage('images/dice1.jpeg'),
            // ),
            // ),
          ),

          Expanded(
            //flex : 1,
            //child:Padding(
            //padding:  EdgeInsets.all(16.0),
            child: FlatButton(
              onPressed: () {
                diceNumber();
              },
              child: Image.asset('images/dice$rightDiceNumber.jpeg'),
            ),
            // Image(
            //   image: AssetImage('images/dice2.jpeg'),
            // ),
          ),
          // ),
          // flex will tell that the first image will take twice the space than second
        ],
      ),
    ),),
    );
  }
}
