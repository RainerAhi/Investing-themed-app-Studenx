import 'package:flutter/material.dart';
import 'package:studenx_oigev2/AktsiadFolder/Tase3Teadmised.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Tase3 extends StatefulWidget {
  const Tase3({Key? key}) : super(key: key);

  @override
  State<Tase3> createState() => _Tase3();
}

class _Tase3 extends State<Tase3> with SingleTickerProviderStateMixin {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white12, width: 10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors:
                    [
                      Color(0xffFFC371),
                      Color(0xffFF5F6D),
                      Color(0xffFF5F6D),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: MaterialButton(
                minWidth: 400,
                height: 200,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () => Navigator.of(context).push(
                  PageTransition(
                    child: Tase3Teadmised(),
                    type: PageTransitionType.fade,
                    alignment: Alignment.center,
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12, left: 15),
                      child: Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [
                              Color(0xffFFC371),
                              Color(0xffFF5F6D),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "3",
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 100,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 50, left: 170, right: 10),
                      child: Image.asset("assets/images/learn.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 130),
                      child: Text(
                        "tase 3",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
