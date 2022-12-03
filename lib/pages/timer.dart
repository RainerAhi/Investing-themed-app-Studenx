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
                  SlideAction(
                    height: 70,
                    borderRadius: 30,
                    reversed: true,
                    elevation: 0,
                    innerColor: Colors.white,
                    outerColor: Colors.white12,
                    sliderButtonIconSize: 50,
                    submittedIcon: Icon(Icons.arrow_circle_left,
                      color: Colors.white,
                    ),
                    sliderButtonIcon: Icon(Icons.arrow_circle_right,
                      size: 30,
                      color: Color(0xffFFC371),
                    ),
                    text: "timer",
                    textStyle: GoogleFonts.bebasNeue(
                      fontSize: 45,
                      color: Colors.white,
                    ),
                    onSubmit: () => Navigator.of(context).push(
                      PageTransition(
                        child: Kodu(),
                        type: PageTransitionType.fade,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
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
                            style: GoogleFonts.bebasNeue(fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150, left: 50),
                    child: Lottie.network("https://assets10.lottiefiles.com/packages/lf20_4yofoa5q.json",
                      height: 300,
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
                    padding: const EdgeInsets.only(top: 80, left: 110),
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