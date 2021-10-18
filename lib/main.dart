import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('My Dice App'),
          backgroundColor: Colors.green,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

int player1 = 0;
int player2 = 0;
int player3 = 0;
int player4 = 0;
int counter1 = 0;
int counter2 = 0;
int counter3 = 0;
int counter4 = 0;
String result() {
  String text = "";
  if (player1 > player2 && player1 > player3 && player1 > player4) {
    text = "Player 1 is the winner";
  } else if (player2 > player1 && player2 > player3 && player2 > player4) {
    text = "Player 2 is the winner";
  } else if (player3 > player1 && player3 > player2 && player3 > player4) {
    text = "Player 3 is the winner";
  } else if (player4 > player1 && player4 > player2 && player4 > player3) {
    text = "Player 4 is the winner";
  }

  return text;
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int num1 = 1;
  int num2 = 1;
  int num3 = 1;
  int num4 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Row(
          children: [
            Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            num1 = Random().nextInt(6) + 1;
                            player1 += num1;
                            counter1++;
                            if (counter1 == 10) {
                              counter1 = 0;
                              String a = result();
                              child:
                              Text("Winner: $a");
                              player1 = 0;
                            }
                          });
                        },
                        child: Image.asset(
                          "images/dice$num1.png",
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            num2 = Random().nextInt(6) + 1;
                            player2 += num2;
                            counter2++;
                            if (counter2 == 10) {
                              counter2 = 0;
                              String a = result();
                              child:
                              Text("Winner: $a");
                              player2 = 0;
                            }
                          });
                        },
                        child: Image.asset(
                          "images/dice$num2.png",
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12.0),
                Expanded(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            num3 = Random().nextInt(6) + 1;
                            player3 += num3;
                            counter3++;
                            if (counter3 == 10) {
                              counter3 = 0;
                              String a = result();
                              child:
                              Text("Winner: $a");
                              player3 = 0;
                            }
                          });
                        },
                        child: Image.asset(
                          "images/dice$num3.png",
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            num4 = Random().nextInt(6) + 1;
                            player4 += num4;
                            counter4++;
                            if (counter4 == 10) {
                              counter4 = 0;
                              String a = result();
                              child:
                              Text("Winner: $a");
                              player4 = 0;
                            }
                          });
                        },
                        child: Image.asset(
                          "images/dice$num4.png",
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 0,
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Text("Player 1 score: $player1"),
                  Text("Player 2 score: $player2"),
                  Text("Player 3 score: $player3"),
                  Text("Player 4 score: $player4"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
