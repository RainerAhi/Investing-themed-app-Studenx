import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:studenx_oigev2/EnglishPages/Home.dart';

class AboutUsEnglish extends StatefulWidget {
  const AboutUsEnglish({Key? key}) : super(key: key);

  @override
  State<AboutUsEnglish> createState() => _AboutUsEnglishState();
}

class _AboutUsEnglishState extends State<AboutUsEnglish> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
          height: 1000,
          width: 500,
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
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          PageTransition(
                            child: Home(),
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
                              Icons.subdirectory_arrow_left,
                              color:  Colors.white,
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("Who are we?",
                          style: GoogleFonts.bebasNeue(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 500,
                  width: 350,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.white12,
                        Colors.white12,
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("We are two Estonian 8th grade students from Jüri Gümnaasium and we are creating an investment app related to our national curriculum. Student(s) must do some type of creative work to graduate from 9th grade. We are very interested in investing and we deal with it on a daily basis. At school, we have noticed that young people and also our friends would like to invest and earn money, but do not know anything about it.",
                          style: GoogleFonts.sansita(
                            fontSize: 27,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
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
                              height: 150,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WaveClipper4 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.5000000, 0);
    path0.quadraticBezierTo(size.width * 0.0994000, size.height * 0.2465000, 0,
        size.height * 0.7500000);
    path0.lineTo(0, size.height);
    path0.quadraticBezierTo(size.width * 0.0222000, size.height * 0.8742500,
        size.width * 0.1000000, size.height * 0.8750000);
    path0.cubicTo(
        size.width * 0.3000000,
        size.height * 0.8750000,
        size.width * 0.7000000,
        size.height * 0.8750000,
        size.width * 0.9000000,
        size.height * 0.8750000);
    path0.quadraticBezierTo(size.width * 0.9746000, size.height * 0.8802500,
        size.width, size.height);
    path0.lineTo(size.width, size.height * 0.7500000);
    path0.quadraticBezierTo(size.width * 0.8990000, size.height * 0.2505000,
        size.width * 0.5000000, 0);

    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}