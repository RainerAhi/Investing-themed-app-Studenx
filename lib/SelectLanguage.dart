import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:studenx_oigev2/screens/welcome_screen.dart';
import 'package:studenx_oigev2/screens/welcome_screen_english.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
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
                      height: 110,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("       vali keel/\nchoose language",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Lottie.network("https://assets6.lottiefiles.com/private_files/lf30_of1c2696.json",
                height: 330,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          PageTransition(
                            child: WelcomeScreen(),
                            type: PageTransitionType.fade,
                            alignment: Alignment.center,
                          ),
                        ),
                        child: Container(
                          width: 185,
                          padding: EdgeInsets.all(8),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.white12, width: 4),
                            gradient: LinearGradient(colors:
                            [
                              Color(0xffFFC371),
                              Color(0xffFF5F6D),
                            ],
                            ),
                          ),
                          child: Row(
                            children: [
                              Text("eesti",
                                style: GoogleFonts.bebasNeue(
                                  fontSize: 40,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image.asset("assets/images/eesti.png",
                                  height: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 100),
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            PageTransition(
                              child: WelcomeScreenEnglish(),
                              type: PageTransitionType.fade,
                              alignment: Alignment.center,
                            ),
                          ),
                          child: Container(
                            width: 225,
                            padding: EdgeInsets.all(8),
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.white12, width: 4),
                              gradient: LinearGradient(colors:
                              [
                                Color(0xffFFC371),
                                Color(0xffFF5F6D),
                              ],
                              ),
                            ),
                            child: Row(
                              children: [
                                Text("english",
                                  style: GoogleFonts.bebasNeue(
                                    fontSize: 40,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Image.asset("assets/images/english2.png",
                                    height: 50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180, left: 0),
                    child: Stack(
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
                                    height: 115,
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
                          padding: const EdgeInsets.only(top: 90, left: 80),
                          child: Text("By 8th grades for school project",
                            style: GoogleFonts.bebasNeue(
                              color: Colors.white,
                              fontSize: 20,
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