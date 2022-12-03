import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:studenx_oigev2/AktsiadFolder/Tase1Teadmised.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:studenx_oigev2/CryptoFolder/CTase1Teadmised.dart';
import 'package:studenx_oigev2/EnglishPages/CryptoCurrency/CLevel1Learning.dart';

class CLevel1 extends StatefulWidget {
  const CLevel1({Key? key}) : super(key: key);

  @override
  State<CLevel1> createState() => _CLevel1();
}

class _CLevel1 extends State<CLevel1> {



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
                    child: CLevel1Learning(),
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
                            "1",
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
                      padding: const EdgeInsets.only(left: 160, top: 0),
                      child: Lottie.network(
                        "https://assets5.lottiefiles.com/packages/lf20_3vc9btr6.json",
                        height: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 130),
                      child: Text(
                        "the basics",
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