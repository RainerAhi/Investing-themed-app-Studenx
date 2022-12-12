import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage1English extends StatelessWidget {
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
                    Text("Learn investing",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text("                   learn everything you\nwill ever need to know about investing",
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
            padding: const EdgeInsets.only(top: 60),
            child: Image.asset("assets/images/hinnad.png",
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}