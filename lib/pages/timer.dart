import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';
import 'package:page_transition/page_transition.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:studenx_oigev2/pages/Kodu.dart';

class MyTimer extends StatefulWidget {
  const MyTimer({Key? key}) : super(key: key);

  @override
  State<MyTimer> createState() => _MyTimerState();
}

class _MyTimerState extends State<MyTimer> {

  int timeleft = 15;

  void _startCountDown() {
    Timer.periodic(Duration(minutes: 1), (timer) {
      if (timeleft > 0) {
        setState(() {
          timeleft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffFF5F6D),
                Color(0xffFF5F6D),
                Color(0xffFFC371),
              ],
            ),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white12,
                            Colors.white12,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 270, top: 15),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        PageTransition(
                          child: Kodu(),
                          type: PageTransitionType.fade,
                          alignment: Alignment.center,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          color: Colors.transparent,
                          height: 50,
                          width: 60,
                          child: Icon(
                            Icons.arrow_circle_left,
                            color:  Colors.white,
                            size: 55,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text("taimer",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 60,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                    child: Container(
                      height: 400,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white12, width: 8),
                          borderRadius: BorderRadius.circular(100),
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Color(0xffFF5F6D),
                              Color(0xffFFC371),
                            ],)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Text(
                              timeleft == 0 ? "läbi" : timeleft.toString(),
                              style: GoogleFonts.bebasNeue(
                                fontSize: 70,
                                color: Colors.white,
                              ),),
                          ),
                          Text("MINUTIT JÄÄNUD",
                            style: GoogleFonts.bebasNeue(fontSize: 43,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 190),
                    child: Center(
                      child: Image.asset("assets/images/timer.png",
                        height: 200,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white12, width: 8),
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Color(0xffFF5F6D),
                          Color(0xffFFC371),
                        ],)
                  ),
                  child: MaterialButton(
                    onPressed: _startCountDown,
                    child: Text("Start", style: GoogleFonts.bebasNeue(
                      fontSize: 50,
                      color: Colors.white,
                    ),),
                  ),
                ),
              ),
              Stack(
                children: [
                  RotatedBox(
                    quarterTurns: 2,
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: 1,
                          child: ClipPath(
                            clipper: WaveClipperTwo(),
                            child: Container(
                              height: 120,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.white12,
                                    Colors.white12,
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 110),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Miks panna timer",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                            content: Text(
                              "Timer on kasulik aja võtmiseks. Näiteks sa tahad igapäev õppida 15min, siis milleks minna äppist välja või kuskilt mujalt aega võtta? Seda saad sa teha otse äpist.",
                              style: GoogleFonts.sansita(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            backgroundColor: Color(0xffFFC371),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text(
                                  "Ok",
                                  style: GoogleFonts.prompt(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Text("Miks panna timer?",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}