import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:lottie/lottie.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:studenx_oigev2/AktsiadFolder/MyCreators.dart';
import 'package:studenx_oigev2/AktsiadFolder/Question.dart';
import 'package:studenx_oigev2/AktsiadFolder/Tase3.dart';
import 'package:studenx_oigev2/CryptoFolder/CMyCreators.dart';
import 'package:studenx_oigev2/CryptoFolder/CMyQuestion.dart';
import 'package:studenx_oigev2/CryptoFolder/CMyQuestion2.dart';
import 'package:studenx_oigev2/CryptoFolder/CMyQuestion3.dart';
import 'package:studenx_oigev2/CryptoFolder/CMyYoutubeVid2.dart';
import 'package:studenx_oigev2/CryptoFolder/CMyYoutubeVid6.dart';
import 'package:studenx_oigev2/CryptoFolder/CTase1.dart';
import 'package:studenx_oigev2/CryptoFolder/CTase2.dart';
import 'package:studenx_oigev2/CryptoFolder/CTase3.dart';
import 'package:studenx_oigev2/CryptoFolder/CUudisedCover.dart';
import 'package:studenx_oigev2/CryptoFolder/Cryptoprices.dart';
import 'package:studenx_oigev2/CryptoFolder/RohkemKrupto.dart';
import 'package:studenx_oigev2/Game/game_page.dart';
import 'package:studenx_oigev2/News/MyNews.dart';
import 'package:studenx_oigev2/notes_pages/notes.dart';
import 'package:studenx_oigev2/notes_pages/notes_aktsiad.dart';
import 'package:studenx_oigev2/pages/AllStockPrices.dart';
import 'package:studenx_oigev2/AktsiadFolder/RohkemAktsiad.dart';
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
import 'package:studenx_oigev2/pages/Kodu.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../pages/ItemModel.dart';
import 'package:expansion_widget/expansion_widget.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:ui' as ui;

import '../AktsiadFolder/Question2.dart';
import '../AktsiadFolder/Question3.dart';
import '../AktsiadFolder/RohkemVideosi.dart';
import '../AktsiadFolder/UudisedCover.dart';
import '../pages/socials.dart';
import 'CMyYoutubeVid.dart';
import 'CMyYoutubeVid3.dart';
import 'CMyYoutubeVid4.dart';
import 'CMyYoutubeVid5.dart';

class Crypto extends StatefulWidget {
  const Crypto({Key? key}) : super(key: key);

  @override
  State<Crypto> createState() => _CryptoState();
}

class _CryptoState extends State<Crypto> with SingleTickerProviderStateMixin {
  late YoutubePlayerController ytController;

  @override
  void initState() {
    ytController = YoutubePlayerController(
      initialVideoId: "aJdIkRipgSk",
      flags: YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    super.initState();
  }

  final _controller = PageController();

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
                          child: Text("krüpto",
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
                          child: Text("riskitase: kõrge",
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
                        child: Kodu(),
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
                    CTase1(),
                    CTase2(),
                    CTase3(),
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
                                        title: Text("Miks testida teadmisi",
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
                              'Testi oma teadmisi',
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
                              'Jälgi hindasi',
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
                            padding: const EdgeInsets.only(top: 70, bottom: 60),
                            child: Stack(
                              children: [
                                Cryptoprices(),
                                Text("*hinnad muutlikuse tõttu nädala keskmised",
                                  style: GoogleFonts.sansita(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
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
                                        child: RohkemKrupto(),
                                        type: PageTransitionType.fade,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text("rohkem krüpto hindasi",
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
                                        title: Text("Miks jälgida",
                                          style: GoogleFonts.bebasNeue(
                                            fontSize: 40,
                                            color: Colors.white,
                                          ),
                                        ),
                                        content: Text(
                                          "Kui jälgida hindasi, saad sa leida ostu kohti. Nt. kui aktsia on oma all time low-s ja usud aktsiasse, siis on see hea koht kus osta. Lisaks on ka võimalus tegeleda day tradimisega.",
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
                                  child: Text("Miks jälgida hindasi",
                                    style: GoogleFonts.bebasNeue(
                                      fontSize: 28,
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
                                          child: CMyYoutubeVid(),
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
                                      child: CMyYoutubeVid2(),
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
                                      child: CMyYoutubeVid3(),
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
                                      child: CMyYoutubeVid4(),
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
                                      child: CMyYoutubeVid5(),
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
                                      child: CMyYoutubeVid6(),
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
                                padding: const EdgeInsets.only(top: 290, left: 290),
                                child: Text("pühkige",
                                  style: GoogleFonts.bebasNeue(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 250, left: 300),
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
                                          child: RohkemVideosi(),
                                          type: PageTransitionType.fade,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 0, right: 0),
                                        child: Text("rohkem videosi",
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
                    padding: const EdgeInsets.only(left: 20, top: 20, bottom: 0),
                    child: GradientText(
                      'KINDLASTI VAATAMISEKS',
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
                    padding: EdgeInsets.only(top: 120, left: 40),
                    child: Text(
                      "TOP CREATORID",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 60,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: CMyCreators(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: CUudisedCover(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20,top: 100),
                        child: Container(
                          height: 400,
                          child: CarouselSlider(
                            slideTransform: StackTransform(),
                            scrollDirection: Axis.horizontal,
                            slideIndicator: CircularSlideIndicator(
                              padding: EdgeInsets.only(bottom: 30),
                              currentIndicatorColor: Colors.white,
                              indicatorBackgroundColor: Colors.black12,
                            ),
                            unlimitedMode: true,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme1.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme2.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme3.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme4.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme5.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme6.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme7.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme8.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme9.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme10.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme11.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme12.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme13.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme14.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme15.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme16.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme17.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme18.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme19.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme20.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme21.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme22.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme23.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme24.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme25.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme26.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme27.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme28.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme29.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme30.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme31.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme32.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme33.PNG",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme34.jpg",),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 10),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                                  child: Image.asset("assets/images/meme35.PNG",),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 170, right: 20),
                    child: Lottie.network(
                      "https://assets4.lottiefiles.com/packages/lf20_kxikfqwj.json",
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 110,left: 40),
                    child: Text("memes",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
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