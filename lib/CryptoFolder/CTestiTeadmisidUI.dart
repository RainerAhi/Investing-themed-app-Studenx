import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../AktsiadFolder/Aktsiad.dart';
import 'CMyQuestion.dart';
import 'CMyQuestion2.dart';
import 'CMyQuestion3.dart';

class CTestiTeadmisid extends StatelessWidget {
  const CTestiTeadmisid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white12, width: 10),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
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
            height: 180,
            width: 350,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: MaterialButton(
                          height: 50,
                          minWidth: 10,
                          onPressed: () => Navigator.of(context).push(
                            PageTransition(
                              child: CMyQuestion(),
                              type: PageTransitionType.fade,
                              alignment: Alignment.center,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Ink(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xffFFC371),
                                  Color(0xffFF5F6D),
                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("1",
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: MaterialButton(
                          height: 50,
                          minWidth: 10,
                          onPressed: () => Navigator.of(context).push(
                            PageTransition(
                              child: CMyQuestion2(),
                              type: PageTransitionType.fade,
                              alignment: Alignment.center,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Ink(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xffFFC371),
                                  Color(0xffFF5F6D),
                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("2",
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: MaterialButton(
                          height: 50,
                          minWidth: 10,
                          onPressed: () => Navigator.of(context).push(
                            PageTransition(
                              child: CMyQuestion3(),
                              type: PageTransitionType.fade,
                              alignment: Alignment.center,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Ink(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xffFFC371),
                                  Color(0xffFF5F6D),
                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("3",
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 10),
                  child: Row(
                    children: [
                      Icon(Icons.play_arrow_sharp,
                        size: 35,
                        color: Colors.white,
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text("Miks testida teadmisid",
                                style: GoogleFonts.bebasNeue(
                                  fontSize: 40,
                                  color: Colors.white,
                                ),
                              ),
                              content: Text(
                                "Kordamine on tarkuse ema! Niimoodi on võimalik korrata oma teadmisi. Nt kui sa oled olnud eemal pikka aega, siis on see ideaalne võimalus kuidas korrata. Mõtle seda kui kooli tunnikontrolli, kui sa saad selle hea tulemuse, siis oled sa teemast hästi aru saanud.",
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
                        child: Text("Miks",
                          style: GoogleFonts.bebasNeue(
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 105, left: 10),
                  child: GradientText(
                    'Testi oma teadmisid',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                    gradient: LinearGradient(colors: [
                      Color(0xffffffff),
                      Color(0xffffffff),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 0, left: 195, right: 10),
          child: Image.asset("assets/images/quiz1.png",
            height: 140,
          ),
        ),
      ],
    );
  }
}
