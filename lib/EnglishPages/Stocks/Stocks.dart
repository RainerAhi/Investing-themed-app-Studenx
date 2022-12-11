import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:lottie/lottie.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:studenx_oigev2/AktsiadFolder/Meemid.dart';
import 'package:studenx_oigev2/AktsiadFolder/Question.dart';
import 'package:studenx_oigev2/AktsiadFolder/Question2.dart';
import 'package:studenx_oigev2/AktsiadFolder/Question3.dart';
import 'package:studenx_oigev2/AktsiadFolder/RohkemVideosi.dart';
import 'package:studenx_oigev2/AktsiadFolder/Tase3.dart';
import 'package:studenx_oigev2/AktsiadFolder/TestiTeadmisiAnimation.dart';
import 'package:studenx_oigev2/AktsiadFolder/UudisedCover.dart';
import 'package:studenx_oigev2/AktsiadFolder/Youtube_videod4.dart';
import 'package:studenx_oigev2/AktsiadFolder/Youtube_videod5.dart';
import 'package:studenx_oigev2/AktsiadFolder/Youtube_videod6.dart';
import 'package:studenx_oigev2/CryptoFolder/krupto.dart';
import 'package:studenx_oigev2/EnglishPages/Home.dart';
import 'package:studenx_oigev2/EnglishPages/Stocks/Level1.dart';
import 'package:studenx_oigev2/EnglishPages/Stocks/Level2.dart';
import 'package:studenx_oigev2/EnglishPages/Stocks/Level3.dart';
import 'package:studenx_oigev2/EnglishPages/Stocks/MoreStocks.dart';
import 'package:studenx_oigev2/EnglishPages/Stocks/MoreVideos.dart';
import 'package:studenx_oigev2/EnglishPages/Stocks/MyQuestionEnglish1.dart';
import 'package:studenx_oigev2/EnglishPages/Stocks/MyQuestionEnglish2.dart';
import 'package:studenx_oigev2/EnglishPages/Stocks/MyQuestionEnglish3.dart';
import 'package:studenx_oigev2/EnglishPages/Stocks/NewsCover.dart';
import 'package:studenx_oigev2/Game/game_page.dart';
import 'package:studenx_oigev2/News/MyNews.dart';
import 'package:studenx_oigev2/notes_pages/notes.dart';
import 'package:studenx_oigev2/notes_pages/notes_aktsiad.dart';
import 'package:studenx_oigev2/pages/AllStockPrices.dart';
import 'package:studenx_oigev2/AktsiadFolder/RohkemAktsiad.dart';
import 'package:studenx_oigev2/pages/Kodu.dart';
import 'package:studenx_oigev2/AktsiadFolder/Tase1Teadmised.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studenx_oigev2/AktsiadFolder/Youtube_videod.dart';
import 'package:studenx_oigev2/AktsiadFolder/Youtube_videod2.dart';
import 'package:studenx_oigev2/AktsiadFolder/Youtube_videod3.dart';
import 'package:studenx_oigev2/AktsiadFolder/Tase2.dart';
import 'package:studenx_oigev2/AktsiadFolder/Tase1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:studenx_oigev2/pages/socials.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:expansion_widget/expansion_widget.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:ui' as ui;

import '../../AktsiadFolder/MyCreators.dart';
import '../Memes.dart';

class Stocks extends StatefulWidget {
  const Stocks({Key? key}) : super(key: key);

  @override
  State<Stocks> createState() => _StocksState();
}

class _StocksState extends State<Stocks> with SingleTickerProviderStateMixin {

  late final AnimationController _controller1;

  @override
  void initState() {
    super.initState();

    _controller1 = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();

    _controller1.dispose();
  }



  final _controller = PageController(
    viewportFraction: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color(0xffFFC371),
              Color(0xffFFC371),
              Color(0xffFF5F6D),
            ],
          ),
        ),
        child: ListView(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: WaveClipperTT(),
                  child: Container(
                    width: 500,
                    height: 200,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white12,
                            Colors.white12,
                          ],
                        )
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 0),
                          child: Text("stocks",
                            style: GoogleFonts.bebasNeue(
                              color: Colors.white,
                              fontSize: 80,
                              letterSpacing: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 90, left: 10),
                          child: Text("risk level: medium",
                            style: GoogleFonts.bebasNeue(
                              color: Colors.white,
                              fontSize: 30,
                              letterSpacing: 9,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SlideAction(
                    height: 70,
                    borderRadius: 50,
                    reversed: true,
                    elevation: 0,
                    innerColor: Colors.white,
                    outerColor: Colors.transparent,
                    sliderButtonIconSize: 50,
                    submittedIcon: Icon(Icons.arrow_circle_left,
                      color: Colors.white,
                    ),
                    sliderButtonIcon: Icon(Icons.arrow_circle_right,
                      size: 30,
                      color: Color(0xffFF5F6D),
                    ),
                    text: "timer",
                    textStyle: GoogleFonts.bebasNeue(
                      fontSize: 45,
                      color: Colors.transparent,
                    ),
                    onSubmit: () => Navigator.of(context).push(
                      PageTransition(
                        child: Home(),
                        type: PageTransitionType.fade,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                height: 200,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Level1(),
                    Level2(),
                    Level3(),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Color(0xffFF5F6D),
                    dotColor: Color(0xffFF5F6D),
                    dotHeight: 30,
                    dotWidth: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
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
                                        child: MyQuestionEnglish1(),
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
                                        child: MyQuestionEnglish2(),
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
                                        child: MyQuestionEnglish3(),
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
                                        title: Text("Why you should test your knowledge?",
                                          style: GoogleFonts.bebasNeue(
                                            fontSize: 40,
                                            color: Colors.white,
                                          ),
                                        ),
                                        content: Text(
                                          "Repetition is the mother of wisdom! In this way, it is possible to repeat your knowledge. For example, if you have been away for a long time, this is the perfect opportunity to repeat. Think of it as a school test, if you get a good result, you have understood the topic well.",
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
                                  child: Text("Why?",
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
                              'Test your knowledge',
                              style: GoogleFonts.bebasNeue(
                                fontSize: 42,
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
                    padding: const EdgeInsets.only(left: 180),
                    child: Lottie.network("https://assets9.lottiefiles.com/packages/lf20_DMgKk1.json",
                      height: 170,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white12, width: 10),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffFFC371),
                            Color(0xffFF5F6D),
                            Color(0xffFF5F6D),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      height: 250,
                      width: 350,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 15),
                            child: GradientText(
                              'Follow prices',
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
                          Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: NotesAktsiad(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 130, left: 12),
                            child: Container(
                              height: 30,
                              width: 270,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: LinearGradient(colors: [
                                  Color(0xffFFC371),
                                  Color(0xffFF5F6D),
                                ]),
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () => Navigator.of(context).push(
                                      PageTransition(
                                        child: MoreStocks(),
                                        type: PageTransitionType.fade,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text("more stocks prices",
                                        style: GoogleFonts.bebasNeue(
                                          fontSize: 28,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 185, left: 10),
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
                                        title: Text("Why you should follow prices?",
                                          style: GoogleFonts.bebasNeue(
                                            fontSize: 36,
                                            color: Colors.white,
                                          ),
                                        ),
                                        content: Text(
                                          "If you follow the prices, you can find places to buy. For example if the stock or crypto is at its all time low and you believe in the stock or crypto, then it is a good place to buy. In addition, there is also an opportunity to engage in day trading.",
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
                                  child: Text("Why you should follow prices?",
                                    style: GoogleFonts.bebasNeue(
                                      fontSize: 27,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: Lottie.network("https://assets1.lottiefiles.com/packages/lf20_vktpsg4v.json",
                      height: 160,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                      height: 330,
                      child: Stack(
                        children: [
                          LiquidSwipe(
                            enableSideReveal: false,
                            fullTransitionValue: 900,
                            slideIconWidget: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 255, 0, 0),
                            ),
                            pages: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 50, left: 0, right: 0,),
                                          child: MyYoutubeVid(),
                                        ),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white12, width: 10),
                                            gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Color(0xffFF5F6D),
                                                Color(0xffFF5F6D),
                                                Color(0xffFFC371),
                                              ],)
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 50, left: 0, right: 0,),
                                      child: MyYoutubeVid2(),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white12, width: 10),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xffFF5F6D),
                                            Color(0xffFF5F6D),
                                            Color(0xffFFC371),
                                          ],)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 50, left: 0, right: 0,),
                                      child: MyYoutubeVid3(),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white12, width: 10),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xffFF5F6D),
                                            Color(0xffFF5F6D),
                                            Color(0xffFFC371),
                                          ],)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 50, left: 0, right: 0,),
                                      child: MyYoutubeVid4(),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white12, width: 10),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xffFF5F6D),
                                            Color(0xffFF5F6D),
                                            Color(0xffFFC371),
                                          ],)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 50, left: 0, right: 0,),
                                      child: MyYoutubeVid5(),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white12, width: 10),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xffFF5F6D),
                                            Color(0xffFF5F6D),
                                            Color(0xffFFC371),
                                          ],)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 50, left: 0, right: 0,),
                                      child: MyYoutubeVid6(),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white12, width: 10),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xffFF5F6D),
                                            Color(0xffFF5F6D),
                                            Color(0xffFFC371),
                                          ],)
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 280, left: 260),
                                child: Text("swipe",
                                  style: GoogleFonts.bebasNeue(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 250, left: 280),
                                child: RotatedBox(
                                  quarterTurns: 2,
                                  child: Icon(
                                    Icons.subdirectory_arrow_right_outlined,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 260, left: 8, right: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20),),
                              child: Container(
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    MaterialButton(
                                      height: 50,
                                      minWidth: 50,
                                      onPressed: () => Navigator.of(context).push(
                                        PageTransition(
                                          child: MoreVideos(),
                                          type: PageTransitionType.fade,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 0, right: 0),
                                        child: Text("More videos",
                                          style: GoogleFonts.bebasNeue(
                                            fontSize: 25,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 20, bottom: 0),
                    child: Text(
                      'must watch videos',
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
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Stack(
                children: [
                  ClipPath(
                    clipper: WaveClipperC(),
                    child: Container(
                      height: 200,
                      width: 500,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xffFF5F6D),
                            Color(0xffFF5F6D),
                          ],)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 120),
                    child: Center(
                      child: Text(
                        "TOP CREATORs",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 60,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: MyCreators(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: NewsCover(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Memes(),
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
                            height: 170,
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
                  padding: const EdgeInsets.only(top: 40),
                  child: MySocials(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
      this.text, {
        required this.gradient,
        this.style,
      });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

class WaveClipperC extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.5000000, 0);
    path0.lineTo(size.width * 0.3000000, size.height * 0.5000000);
    path0.lineTo(size.width * 0.4400000, size.height * 0.4500000);
    path0.lineTo(size.width * 0.4400000, size.height * 0.6000000);
    path0.quadraticBezierTo(size.width * 0.1400000, size.height * 0.6000000,
        size.width * 0.0400000, size.height * 0.6000000);
    path0.quadraticBezierTo(size.width * 0.0092000, size.height * 0.6130000, 0,
        size.height * 0.7000000);
    path0.lineTo(0, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, size.height * 0.7000000);
    path0.quadraticBezierTo(size.width * 0.9908000, size.height * 0.6090000,
        size.width * 0.9600000, size.height * 0.6000000);
    path0.quadraticBezierTo(size.width * 0.8600000, size.height * 0.6000000,
        size.width * 0.5600000, size.height * 0.6000000);
    path0.lineTo(size.width * 0.5600000, size.height * 0.4500000);
    path0.lineTo(size.width * 0.7000000, size.height * 0.5000000);
    path0.lineTo(size.width * 0.5000000, 0);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipperTT extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0,0);
    path0.lineTo(size.width,0);
    path0.lineTo(size.width,size.height);
    path0.quadraticBezierTo(size.width*0.9794000,size.height*0.7135294,size.width*0.9000000,size.height*0.7058824);
    path0.cubicTo(size.width*0.7000000,size.height*0.7058824,size.width*0.3000000,size.height*0.7058824,size.width*0.1000000,size.height*0.7058824);
    path0.quadraticBezierTo(size.width*0.0158000,size.height*0.7088235,0,size.height);

    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}