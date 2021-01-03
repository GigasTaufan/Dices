import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[500],
        appBar: AppBar(
          title: Text('Role The Dices'),
          backgroundColor: Colors.red[900],
          elevation: 0.0,
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

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;
  int total = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Role the Dices',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              letterSpacing: 1.5,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          leftDice = Random().nextInt(6) + 1;
                          rightDice = Random().nextInt(6) + 1;
                          total = leftDice + rightDice;
                        });
                      },
                      child: Image.asset('images/dice$leftDice.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          leftDice = Random().nextInt(6) + 1;
                          rightDice = Random().nextInt(6) + 1;
                          total = leftDice + rightDice;
                        });
                      },
                      child: Image.asset('images/dice$rightDice.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'Total Step: $total',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
