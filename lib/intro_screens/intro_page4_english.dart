import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class IntroPage4English extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffFF5F6D),
            Color(0xffFF5F6D),
            Color(0xffFFC371),
          ],),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Stack(
              children: [
                Column(
                  children: [
                    Text("and much more",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text("              Listen to music, take notes,\nlaugh at memes, follow prices and news",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 20,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Lottie.network("https://assets2.lottiefiles.com/packages/lf20_tqjrovxh.json"),
          ),
        ],
      ),
    );
  }
}