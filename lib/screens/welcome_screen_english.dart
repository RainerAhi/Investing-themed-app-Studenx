import 'package:studenx_oigev2/EnglishPages/Home.dart';
import 'package:studenx_oigev2/intro_screens/intro_page4_english.dart';
import 'package:studenx_oigev2/intro_screens/intro_page1_english.dart';
import 'package:studenx_oigev2/intro_screens/intro_page2_english.dart';
import 'package:studenx_oigev2/intro_screens/intro_page3_english.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreenEnglish extends StatefulWidget {
  const WelcomeScreenEnglish({Key? key}) : super(key: key);

  @override
  State<WelcomeScreenEnglish> createState() => _WelcomeScreenEnglishState();
}


class _WelcomeScreenEnglishState extends State<WelcomeScreenEnglish> {

  PageController _controller = PageController();

  bool onLastPage = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3);
              });
            },
            children: [
              IntroPage1English(),
              IntroPage2English(),
              IntroPage3English(),
              IntroPage4English(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      PageTransition(
                        child: Home(),
                        type: PageTransitionType.fade,
                        alignment: Alignment.center,
                      ),
                    );
                  },
                  child: Text("skip",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SmoothPageIndicator(
                  controller: _controller,
                  effect: ScrollingDotsEffect(
                    activeDotColor: Colors.white,
                    dotColor: Colors.white30,
                    dotHeight: 20,
                    dotWidth: 20,
                  ),
                  count: 4,
                ),

                onLastPage ?
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      PageTransition(
                        child: Home(),
                        type: PageTransitionType.fade,
                        alignment: Alignment.center,
                      ),
                    );
                  },
                  child: Text("start",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ) : GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text("next",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}