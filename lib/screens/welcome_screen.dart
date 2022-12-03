import 'package:studenx_oigev2/intro_screens/intro_page1.dart';
import 'package:studenx_oigev2/intro_screens/intro_page2.dart';
import 'package:studenx_oigev2/intro_screens/intro_page3.dart';
import 'package:studenx_oigev2/intro_screens/intro_screen4.dart';
import 'package:studenx_oigev2/pages/Kodu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}


class _WelcomeScreenState extends State<WelcomeScreen> {

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
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
              IntroPage4(),
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
                        child: Kodu(),
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
                        child: Kodu(),
                        type: PageTransitionType.fade,
                        alignment: Alignment.center,
                      ),
                    );
                  },
                  child: Text("õppima",
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
                  child: Text("edasi",
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