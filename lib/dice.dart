import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  int sum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[500],
        centerTitle: true,
        title: Text("DICE GAME")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(32),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Image(image: AssetImage('images/dice1.png'),
                  // width: 300,
                  // )

                  // Expanded로 위젯 최대로 차지한다. Column과 Row 차이
                  // 아래의 경우에는 반절씩 차지하게 된다.
                  Expanded(
                    // flex: 2, 비율 설정
                      child: Image.asset('images/dice$leftDice.png')
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    // flex: 1,
                      child: Image.asset('images/dice$rightDice.png')
                  ),
                ],
              ),
            ),
            Text("$sum",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 30,
            ),
            Container(
              // button 크기를 조절하기 위한 container
              height: 40,
              width: 100,
              child: OutlinedButton(
                  onPressed: (){
                    setState(() {
                      leftDice = Random().nextInt(6) + 1;
                      rightDice = Random().nextInt(6) + 1;
                      sum = leftDice + rightDice;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.blueGrey,
                  )
              ),
            )
          ],
        )
      ),
    );
  }
}
