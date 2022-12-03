import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:studenx_oigev2/AktsiadFolder/WallStreetJournal.dart';
import 'package:studenx_oigev2/CryptoFolder/krupto.dart';
import 'package:studenx_oigev2/Game/game_page.dart';
import 'package:studenx_oigev2/Music/MyMusicPlayer.dart';
import 'package:studenx_oigev2/SelectLanguage.dart';
import 'package:studenx_oigev2/ToDo/TodoMain.dart';
import 'package:studenx_oigev2/AktsiadFolder/Aktsiad.dart';
import 'package:studenx_oigev2/notes_pages/notes_aktsiad.dart';
import 'package:studenx_oigev2/pages/Meist.dart';
import 'package:studenx_oigev2/AktsiadFolder/Tase1Teadmised.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'dart:ui' as ui;
import 'package:page_transition/page_transition.dart';
import 'package:studenx_oigev2/AktsiadFolder/Youtube_videod.dart';
import 'package:studenx_oigev2/pages/RaskedM%C3%B5isted.dart';
import 'package:studenx_oigev2/pages/AboutUs.dart';
import 'package:studenx_oigev2/pages/socials.dart';
import 'package:studenx_oigev2/pages/test.dart';
import 'package:studenx_oigev2/pages/timer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:studenx_oigev2/notes_pages/notes.dart';
import 'InvesteerimiseGraph.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'dart:math' as math;

class Kodu extends StatefulWidget {
  const Kodu({Key? key}) : super(key: key);

  @override
  State<Kodu> createState() => _KoduState();
}

class _KoduState extends State<Kodu> with SingleTickerProviderStateMixin {


  static const colorizeColors = [
    Colors.white,
    Color(0xff89CFFF),
    Color(0xffdf98fa),
    Color(0xff9055ff)
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
  );

  Future<void> _handleRefresh() async {
    return await Future.delayed(Duration(milliseconds: 500));
  }

  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  bool aktsiadani = false;

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
        child: SafeArea(
          child: ListView(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: WaveClipperTT(),
                    child: Container(
                      width: 500,
                      height: 170,
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 340, top: 3),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        PageTransition(
                          child: AboutUs(),
                          type: PageTransitionType.fade,
                          alignment: Alignment.center,
                        ),
                      ),
                      child: Icon(Icons.people,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 8),
                    child: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            "Sinu teekond",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Icon(
                            Icons.rocket_launch,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Text(
                            "rahalise vabaduseni",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 20,top: 140),
                    child: Container(
                      height: 400,
                      width: 330,
                      child: CarouselSlider(
                        slideTransform: ZoomOutSlideTransform(),
                        scrollDirection: Axis.horizontal,
                        slideIndicator: CircularWaveSlideIndicator(
                          padding: EdgeInsets.only(bottom: 25),
                          currentIndicatorColor: Colors.white,
                          indicatorBackgroundColor: Colors.black12,
                        ),
                        unlimitedMode: true,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.of(context).push(
                              PageTransition(
                                child: Aktsiad(),
                                type: PageTransitionType.fade,
                                alignment: Alignment.center,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                height: 100,
                                padding: EdgeInsets.all(0),
                                margin: const EdgeInsets.symmetric(vertical: 8),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 12),
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors:
                                      [
                                        Color(0xffFFC371),
                                        Color(0xffFF5F6D),
                                        Color(0xffFF5F6D),
                                      ]
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 63),
                                      child: Text("aktsiad",
                                        style: GoogleFonts.bebasNeue(
                                          fontSize: 60,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 5,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30, bottom: 30),
                                      child: Lottie.network("https://assets9.lottiefiles.com/private_files/lf30_F3v2Nj.json",
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45, top: 305),
                                      child: Text("riskitase: keskmine",
                                        style: GoogleFonts.bebasNeue(
                                          fontSize: 35,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context).push(
                              PageTransition(
                                child: Crypto(),
                                type: PageTransitionType.fade,
                                alignment: Alignment.center,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                height: 100,
                                padding: EdgeInsets.all(0),
                                margin: const EdgeInsets.symmetric(vertical: 8),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white12, width: 12),
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors:
                                      [
                                        Color(0xffFFC371),
                                        Color(0xffFF5F6D),
                                        Color(0xffFF5F6D),
                                      ]
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 72),
                                      child: Text("krüpto",
                                        style: GoogleFonts.bebasNeue(
                                          fontSize: 60,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 5,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0, bottom: 53),
                                      child: Lottie.network("https://assets8.lottiefiles.com/packages/lf20_yc9ywdm7.json",
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 65, top: 305),
                                      child: Text("riskitase: kõrge",
                                        style: GoogleFonts.bebasNeue(
                                          fontSize: 35,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
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
                    padding: const EdgeInsets.only(top: 510),
                    child: Column(
                      children: [
                        RotatedBox(
                          quarterTurns: 2,
                          child: ClipPath(
                            clipper: WaveClipperALT(),
                            child: Container(
                              color: Colors.white12,
                              width: 500,
                              height: 50,
                            ),
                          ),
                        ),
                        Container(
                          width: 500,
                          height: 540,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors:
                              [
                                Colors.white12,
                                Colors.white12,
                              ],
                            ),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 152, right: 0, top: 10),
                                child: GestureDetector(
                                  onTap: () => Navigator.of(context).push(
                                    PageTransition(
                                      child: RaskedMoisted(),
                                      type: PageTransitionType.fade,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  child: ClipPath(
                                    clipper: WaveClipperHx(),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color(0xffFF5F6D),
                                            Color(0xffFF5F6D),
                                          ],
                                        ),
                                      ),
                                      height: 170,
                                      width: 246,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 0, top: 0),
                                        child: Lottie.network("https://assets5.lottiefiles.com/private_files/lf30_x8aowqs9.json"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 100),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
                                      child: GestureDetector(
                                        onTap: () => Navigator.of(context).push(
                                          PageTransition(
                                            child: TodoMain(),
                                            type: PageTransitionType.fade,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        child: ClipPath(
                                          clipper: WaveClipperHx(),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color(0xffFF5F6D),
                                                  Color(0xffFF5F6D),
                                                ],
                                              ),
                                            ),
                                            height: 170,
                                            width: 246,
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 12),
                                              child: Lottie.network("https://assets7.lottiefiles.com/private_files/lf30_cldvedro.json",),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0, top: 180),
                                      child: GestureDetector(
                                        onTap: () => Navigator.of(context).push(
                                          PageTransition(
                                            child: MyTimer(),
                                            type: PageTransitionType.fade,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        child: ClipPath(
                                          clipper: WaveClipperHx(),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color(0xffFF5F6D),
                                                  Color(0xffFF5F6D),
                                                ],
                                              ),
                                            ),
                                            height: 170,
                                            width: 246,
                                            child: Lottie.network("https://assets10.lottiefiles.com/packages/lf20_4yofoa5q.json"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 152, top: 89),
                                      child: MyMusic(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 152, top: 268),
                                      child: GestureDetector(
                                        onTap: () => Navigator.of(context).push(
                                          PageTransition(
                                            child: GamePage(),
                                            type: PageTransitionType.fade,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        child: ClipPath(
                                          clipper: WaveClipperHx(),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color(0xffFF5F6D),
                                                  Color(0xffFF5F6D),
                                                ],
                                              ),
                                            ),
                                            height: 170,
                                            width: 246,
                                            child: Lottie.network("https://assets2.lottiefiles.com/packages/lf20_h8lk5ow8.json"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white12,
                          Colors.white12,
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      child: ClipPath(
                        clipper: WaveClipperTop(),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white12,
                                Colors.white12,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 35,
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(vertical: 30, horizontal: 0),
                          child: ClipPath(
                            clipper: WaveClipper4(),
                            child: Container(
                              height: 300,
                              width: 500,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xffFF5F6D),
                                      Color(0xffFF5F6D),
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 105, left: 120),
                          child: Text(
                            "Õpilastelt",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 42,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 150, left: 40),
                          child: Text(
                            "lastele ja noortele",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 44,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(69, 205, 50, 0),
                          child: MaterialButton(
                            color: Colors.white,
                            height: 80,
                            minWidth: 200,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("Meie eesmärk",
                                    style: GoogleFonts.bebasNeue(
                                      fontSize: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                  content: Text(
                                    "Meie eesmärk on laiendada õpilaste investeerimisalaseid teadmisi ning tekitada neis huvi investeerimise vastu ja seeläbi saada rohkem noori investeerima.",
                                    style: GoogleFonts.sansita(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  backgroundColor: Color(0xffFF5F6D),
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
                            child: Text(
                              "Meie eesmärk",
                              style: GoogleFonts.prompt(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Color(0xffFF5F6D),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 292),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 310),
                                child: Image.asset("assets/images/transparentrocket.png"),
                              ),
                              Krupto(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.4980000, 0);
    path0.lineTo(size.width * 0.1680000, size.height * 0.9900000);
    path0.lineTo(size.width * 0.9900000, size.height * 0.4040000);
    path0.lineTo(size.width * 0.0080000, size.height * 0.4080000);
    path0.lineTo(size.width * 0.8060000, size.height * 0.9880000);
    path0.lineTo(size.width * 0.6300000, size.height * 0.4000000);

    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipperTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height);
    path0.lineTo(size.width * 0.1000000, size.height);
    path0.quadraticBezierTo(size.width * 0.3010000, size.height * 0.2660000,
        size.width * 0.4960000, 0);
    path0.quadraticBezierTo(size.width * 0.7010000, size.height * 0.2580000,
        size.width * 0.9000000, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, 0);

    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper4 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.5000000, 0);
    path0.quadraticBezierTo(size.width * 0.0994000, size.height * 0.2465000, 0,
        size.height * 0.7500000);
    path0.lineTo(0, size.height);
    path0.quadraticBezierTo(size.width * 0.0222000, size.height * 0.8742500,
        size.width * 0.1000000, size.height * 0.8750000);
    path0.cubicTo(
        size.width * 0.3000000,
        size.height * 0.8750000,
        size.width * 0.7000000,
        size.height * 0.8750000,
        size.width * 0.9000000,
        size.height * 0.8750000);
    path0.quadraticBezierTo(size.width * 0.9746000, size.height * 0.8802500,
        size.width, size.height);
    path0.lineTo(size.width, size.height * 0.7500000);
    path0.quadraticBezierTo(size.width * 0.8990000, size.height * 0.2505000,
        size.width * 0.5000000, 0);

    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipperR extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height);
    path0.quadraticBezierTo(size.width * 0.0142000, size.height * 0.1090000,
        size.width * 0.1000000, size.height * 0.1000000);
    path0.cubicTo(
        size.width * 0.3000000,
        size.height * 0.1000000,
        size.width * 0.7000000,
        size.height * 0.1000000,
        size.width * 0.9000000,
        size.height * 0.1000000);
    path0.quadraticBezierTo(size.width * 0.9858000, size.height * 0.1090000,
        size.width, size.height);
    path0.lineTo(size.width, 0);

    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipperHx extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width*0.6900000,0);
    path0.lineTo(size.width*0.3100000,0);
    path0.lineTo(size.width*0.1180000,size.height*0.5000000);
    path0.lineTo(size.width*0.3100000,size.height);
    path0.lineTo(size.width*0.6900000,size.height);
    path0.lineTo(size.width*0.8780000,size.height*0.5000000);
    path0.lineTo(size.width*0.6900000,0);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
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

class WaveClipperALT extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0,0);
    path0.lineTo(size.width,0);
    path0.lineTo(size.width,size.height);
    path0.quadraticBezierTo(size.width*0.9986000,size.height*0.0055000,size.width*0.9000000,0);
    path0.cubicTo(size.width*0.5960000,size.height*-0.6620000,size.width*0.5144000,size.height*-0.7280000,size.width*0.1000000,0);
    path0.quadraticBezierTo(size.width*0.0046000,size.height*0.0180000,0,size.height);

    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
