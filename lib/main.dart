import 'package:flutter/material.dart';

import 'dart:math';

import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var player1;

  var player2;
  String result = '';
  int randomNum1 = 1;
  int randomNum2 = 2;
//

  @override
  Widget build(BuildContext context) {
    void play() {
      setState(() {
        randomNum1 = Random().nextInt(3) + 1;
        randomNum2 = Random().nextInt(3) + 1;
        // print(randomNum1);

        if (randomNum1 == 1 && randomNum2 == 1) {
          result = "draw";
        } else if (randomNum1 == 1 && randomNum2 == 2) {
          result = ("Player 1 is the winner");
        } else if (randomNum1 == 1 && randomNum2 == 3) {
          result = ("player 2 is the winner");
        } else if (randomNum1 == 2 && randomNum2 == 1) {
          result = ("Player 2 is the winner");
        } else if (randomNum1 == 2 && randomNum2 == 2) {
          result = ("draw");
        } else if (randomNum1 == 2 && randomNum2 == 3) {
          result = ("Player 1 is the winner");
        } else if (randomNum1 == 3 && randomNum2 == 1) {
          result = ("Player 1 is the winner");
        } else if (randomNum1 == 3 && randomNum2 == 2) {
          result = ("Player 2 is the winner");
        } else {
          result = ("draw");
        }
      });
    }

    ;

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.yellow,
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text("Rock Paper Scissors"),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        alignment: Alignment.center,
                        child: Image.asset(
                          // 'assets/images/1.png',
                          'assets/images/$randomNum1.png',
                          // $randomNum1
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Text(
                        "Player 1",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        alignment: Alignment.center,
                        child: Image.asset(
                          // 'assets/images/2.png',
                          'assets/images/$randomNum2.png',
                          // $randomNum1
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Text(
                        "Player 2",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              Text(
                result,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: play
                      // play,
                      ,
                      child: Text(
                        "Play",
                        style: TextStyle(fontSize: 25),
                      )))
            ],
          )),
    );
  }
}
