import 'package:flutter/material.dart';
import 'package:studenx_oigev2/Game/barrier.dart';
import 'dart:async';

import 'package:studenx_oigev2/Game/bird.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studenx_oigev2/pages/Kodu.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  static double birdY = 0;
  double initialPos = birdY;
  double height = 0;
  double time = 0;
  double gravity = -4.9;
  double velocity = 2.5;
  double birdWidth = 0.1;
  double birdHeight = 0.1;

  bool gameHasStarted = false;

  static List<double> barrierX = [2, 2 + 1.5];
  static double barrierWidth = 0.5;
  List<List<double>> barrierHeight = [
    [0.6, 0.4],
    [0.4, 0.6],
  ];

  void startGame() {
    gameHasStarted = true;
    Timer.periodic(Duration(milliseconds: 10), (timer) {
      height = gravity * time * time + velocity * time;

      setState(() {
        birdY = initialPos - height;
      });

      if (birdIsDead()) {
        timer.cancel();
        _showDialog();
      }

      moveMap();

      time += 0.01;
    });
  }

  void moveMap() {
    for (int i = 0; i < barrierX.length; i++) {
      setState(() {
        barrierX[i] -= 0.005;
      });

      if (barrierX[i] < -1.5) {
        barrierX[i] += 3;
      }
    }
  }

  void oppima() {
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => Kodu()),
    );
  }

  void resetGame() {
    Navigator.pop(context);
    setState(() {
      birdY = 0;
      gameHasStarted = false;
      time = 0;
      initialPos = birdY;
    });
  }

  void _showDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color(0xffFF5F6D),
            title: Center(
              child: Column(
                children: [
                  Text(
                      "M  Ä  N  G   L  Ä  B  I",
                      style: GoogleFonts.bebasNeue(
                        color: Colors.white,
                        fontSize: 33,
                      )
                  ),
                  Text(
                      "Mängi edasi või õpi?",
                      style: GoogleFonts.bebasNeue(
                        color: Colors.white,
                        fontSize: 27,
                      )
                  ),
                ],
              ),
            ),
            actions: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: GestureDetector(
                      onTap: oppima,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          padding: EdgeInsets.all(7),
                          color:  Color(0xffFFC371),
                          child: Text(
                            "TAGASI ÕPPIMA",
                            style: GoogleFonts.sansita(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: resetGame,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        padding: EdgeInsets.all(7),
                        color:  Color(0xffFFC371),
                        child: Text(
                          "MÄNGI UUESTI",
                          style: GoogleFonts.sansita(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }

  void jump() {
    setState(() {
      time = 0;
      initialPos = birdY;
    });
  }

  bool birdIsDead() {
    if (birdY < -1 || birdY > 1) {
      return true;
    }

    for (int i = 0; i < barrierX.length; i++) {
      if (barrierX[i] <= birdWidth &&
          barrierX[i] + barrierWidth >= -birdWidth &&
          (birdY <= -1 + barrierHeight[i][0] ||
              birdY + birdHeight >= 1 - barrierHeight[i][1])) {
        return true;
      }
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: gameHasStarted ? jump : startGame,
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Color(0xff252340),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8, right: 4, left: 4),
                        child: Image.asset("assets/images/kliin2.png"),
                      ),
                      Center(
                        child: Stack(
                          children: [
                            MyBird(
                              birdY: birdY,
                              birdWidth: birdWidth,
                              birdHeight: birdHeight,
                            ),
                            // top barrier 0
                            MyBarrier(
                              barrierX: barrierX[0],
                              barrierWidth: barrierWidth,
                              barrierHeight: barrierHeight[0][0],
                              isThisBottomBarrier: false,
                            ),
                            // bottom barrier 0
                            MyBarrier(
                              barrierX: barrierX[0],
                              barrierWidth: barrierWidth,
                              barrierHeight: barrierHeight[0][1],
                              isThisBottomBarrier: true,
                            ),
                            // top barrier 1
                            MyBarrier(
                              barrierX: barrierX[1],
                              barrierWidth: barrierWidth,
                              barrierHeight: barrierHeight[1][0],
                              isThisBottomBarrier: false,
                            ),
                            // bottom barrier 1
                            MyBarrier(
                              barrierX: barrierX[1],
                              barrierWidth: barrierWidth,
                              barrierHeight: barrierHeight[1][1],
                              isThisBottomBarrier: true,
                            ),
                            Container(
                              alignment: Alignment(0, -0.5),
                              child: Text(
                                gameHasStarted ? "" : "VAJUTA MÄNGIMISEKS",
                                style: GoogleFonts.bebasNeue(
                                  color: Colors.white,
                                  fontSize: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 15,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Color(0xff252340),
                        Color(0xff252340),
                      ]),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff252340),
                          Color(0xffFF5F6D),
                        ]),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Puhka õppimisest mängimisega!", style: GoogleFonts.bebasNeue(
                            fontSize: 35,
                            color: Colors.white,
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}