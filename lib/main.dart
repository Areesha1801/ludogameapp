import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int player1 = 0;
int player2 = 0;
int player3 = 0;
int player4 = 0;
int counter1 = 0;
int counter2 = 0;
int counter3 = 0;
int counter4 = 0;
String text = "";
void result() {
  if (player1 > player2 && player1 > player3 && player1 > player4) {
    text = "Player 1 is the winner";
  } else if (player2 > player1 && player2 > player3 && player2 > player4) {
    text = "Player 2 is the winner";
  } else if (player3 > player1 && player3 > player2 && player3 > player4) {
    text = "Player 3 is the winner";
  } else if (player4 > player1 && player4 > player2 && player4 > player3) {
    text = "Player 4 is the winner";
  }
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
      appBar: AppBar(
        actions: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "images/ludo.png",
                  alignment: Alignment.centerLeft,
                  height: 60,
                  width: 60,
                ),
                Text(
                  '     Ludo Game App',
                ),
              ],
            ),
          ),
        ],
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60.0,
                    ),
                    const Text(
                      "Score Board",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    const Padding(padding: EdgeInsets.symmetric()),
                    Text("Player 1 score: $player1"),
                    Text("\nPlayer 1 total turns: $counter1"),
                    Text("\nPlayer 2 score: $player2"),
                    Text("\nPlayer 2 total turns: $counter2"),
                    Text("\nPlayer 3 score: $player3"),
                    Text("\nPlayer 3 total turns: $counter3"),
                    Text("""
\nPlayer 4 score: $player4"""),
                    Text("""
\nPlayer 4 total turns: $counter4"""),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Text("Player 1 "),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                num1 = Random().nextInt(6) + 1;
                                if (num1 == 6) {
                                  player1 += num1;
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        num1 = Random().nextInt(6) + 1;
                                        if (num1 == 6) {
                                          player1 += num1;
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                num1 = Random().nextInt(6) + 1;
                                                if (num1 == 6) {
                                                  player1 -= 12;
                                                } else {
                                                  player1 += num1;
                                                }
                                              });
                                            },
                                            child: Image.asset(
                                              "images/dice$num1.png",
                                            ),
                                          );
                                        } else {
                                          player1 += num1;
                                          counter1++;
                                          if (counter1 == 11) {
                                            counter1 = 0;
                                            result();
                                            player1 = 0;
                                          }
                                        }
                                      });
                                      child:
                                      Image.asset(
                                        "images/dice$num1.png",
                                      );
                                    },
                                  );
                                } else {
                                  player1 += num1;
                                  counter1++;
                                  if (counter1 == 11) {
                                    counter1 = 0;
                                    result();
                                    player1 = 0;
                                  }
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
                          const Text("Player 2 "),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                num2 = Random().nextInt(6) + 1;
                                if (num2 == 6) {
                                  player2 += num2;
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        num2 = Random().nextInt(6) + 1;
                                        if (num2 == 6) {
                                          player2 += num2;
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                num2 = Random().nextInt(6) + 1;
                                                if (num2 == 6) {
                                                  player2 -= 12;
                                                } else {
                                                  player2 += num2;
                                                }
                                              });
                                            },
                                            child: Image.asset(
                                              "images/dice$num2.png",
                                            ),
                                          );
                                        } else {
                                          player2 += num2;
                                          counter2++;
                                          if (counter2 == 11) {
                                            counter2 = 0;
                                            result();
                                            player2 = 0;
                                          }
                                        }
                                      });
                                      child:
                                      Image.asset(
                                        "images/dice$num2.png",
                                      );
                                    },
                                  );
                                } else {
                                  player2 += num2;
                                  counter2++;
                                  if (counter2 == 11) {
                                    counter2 = 0;
                                    result();
                                    player2 = 0;
                                  }
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
                          const Text("Player 3 "),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                num3 = Random().nextInt(6) + 1;
                                if (num3 == 6) {
                                  player3 += num3;
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        num3 = Random().nextInt(6) + 1;
                                        if (num3 == 6) {
                                          player3 += num3;
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                num3 = Random().nextInt(6) + 1;
                                                if (num3 == 6) {
                                                  player3 -= 12;
                                                } else {
                                                  player3 += num3;
                                                }
                                              });
                                            },
                                            child: Image.asset(
                                              "images/dice$num3.png",
                                            ),
                                          );
                                        } else {
                                          player3 += num3;
                                          counter3++;
                                          if (counter3 == 11) {
                                            counter3 = 0;
                                            result();

                                            player3 = 0;
                                          }
                                        }
                                      });
                                      child:
                                      Image.asset(
                                        "images/dice$num3.png",
                                      );
                                    },
                                  );
                                } else {
                                  player3 += num3;
                                  counter3++;
                                  if (counter3 == 11) {
                                    counter3 = 0;
                                    result();
                                    player3 = 0;
                                  }
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
                          const Text("Player 4 "),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                num4 = Random().nextInt(6) + 1;
                                if (num4 == 6) {
                                  player4 += num4;
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        num4 = Random().nextInt(6) + 1;
                                        if (num4 == 6) {
                                          player4 += num4;
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                num4 = Random().nextInt(6) + 1;
                                                if (num4 == 6) {
                                                  player4 -= 12;
                                                } else {
                                                  player4 += num4;
                                                }
                                              });
                                            },
                                            child: Image.asset(
                                              "images/dice$num4.png",
                                            ),
                                          );
                                        } else {
                                          player4 += num4;
                                          counter4++;
                                          if (counter4 == 11) {
                                            counter4 = 0;
                                            result();
                                            player4 = 0;
                                          }
                                        }
                                      });
                                      child:
                                      Image.asset(
                                        "images/dice$num4.png",
                                      );
                                    },
                                  );
                                } else {
                                  player4 += num4;
                                  counter4++;
                                  if (counter4 == 11) {
                                    counter4 = 0;
                                    result();
                                    player4 = 0;
                                  }
                                }
                              });
                            },
                            child: Image.asset(
                              "images/dice$num3.png",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}


