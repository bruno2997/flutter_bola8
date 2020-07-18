import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Pergunte-me Algo'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var ballNumber = 1;
  var textBall = "YES";
  List<String> arrayTextBall = [
    'YES',
    'NO',
    'ASK AGAIN LATER',
    'THE ANSWER YES',
    'I HAVE NO IDEA'
  ];

  void random(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      textBall = arrayTextBall[ballNumber - 1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              setState(() {
                random();
              });
            },
            child: Image.asset(
                'images/ball$ballNumber.png'
            ),
          ),
          Text(
            '$textBall',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

