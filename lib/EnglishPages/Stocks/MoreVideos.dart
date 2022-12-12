import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid1.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid2.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid3.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid4.dart';
import 'package:page_transition/page_transition.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid1.dart';
import 'package:studenx_oigev2/EnglishPages/Home.dart';

import '../../AktsiadFolder/FLisaVid1.dart';
import '../../AktsiadFolder/FLisaVid10.dart';
import '../../AktsiadFolder/FLisaVid11.dart';
import '../../AktsiadFolder/FLisaVid2.dart';
import '../../AktsiadFolder/FLisaVid3.dart';
import '../../AktsiadFolder/FLisaVid4.dart';
import '../../AktsiadFolder/FLisaVid5.dart';
import '../../AktsiadFolder/FLisaVid6.dart';
import '../../AktsiadFolder/FLisaVid7.dart';
import '../../AktsiadFolder/FLisaVid8.dart';
import '../../AktsiadFolder/FLisaVid9.dart';
import '../../AktsiadFolder/LisaVid10.dart';
import '../../AktsiadFolder/LisaVid11.dart';
import '../../AktsiadFolder/LisaVid12.dart';
import '../../AktsiadFolder/LisaVid13.dart';
import '../../AktsiadFolder/LisaVid14.dart';
import '../../AktsiadFolder/LisaVid15.dart';
import '../../AktsiadFolder/LisaVid16.dart';
import '../../AktsiadFolder/LisaVid5.dart';
import '../../AktsiadFolder/LisaVid6.dart';
import '../../AktsiadFolder/LisaVid7.dart';
import '../../AktsiadFolder/LisaVid8.dart';
import '../../AktsiadFolder/LisaVid9.dart';
import '../../CryptoFolder/CLisaVid10.dart';
import '../../CryptoFolder/CLisaVid11.dart';
import '../../CryptoFolder/CLisaVid12.dart';
import '../../CryptoFolder/CLisaVid13.dart';
import '../../CryptoFolder/CLisaVid14.dart';
import '../../CryptoFolder/CLisaVid2.dart';
import '../../CryptoFolder/CLisaVid3.dart';
import '../../CryptoFolder/CLisaVid4.dart';
import '../../CryptoFolder/CLisaVid5.dart';
import '../../CryptoFolder/CLisaVid6.dart';
import '../../CryptoFolder/CLisaVid7.dart';
import '../../CryptoFolder/CLisaVid8.dart';
import '../../CryptoFolder/CLisaVid9.dart';

class MoreVideos extends StatefulWidget {
  const MoreVideos({Key? key}) : super(key: key);

  @override
  State<MoreVideos> createState() => _MoreVideosState();
}

class _MoreVideosState extends State<MoreVideos> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffFF5F6D),
                  Color(0xffFF5F6D),
                  Color(0xffFFC371),
                ],)
          ),
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    width: 500,
                    height: 0,
                    color: Colors.white12,
                  ),
                  SlideAction(
                    height: 70,
                    borderRadius: 30,
                    reversed: true,
                    elevation: 0,
                    innerColor: Colors.white,
                    outerColor: Colors.white12,
                    sliderButtonIconSize: 50,
                    submittedIcon: Icon(Icons.arrow_circle_left,
                      color: Color(0xffFF5F6D),
                    ),
                    sliderButtonIcon: Icon(Icons.arrow_circle_right,
                      size: 30,
                      color: Color(0xffFF5F6D),
                    ),
                    text: "extra videos",
                    textStyle: GoogleFonts.bebasNeue(
                      fontSize: 45,
                      color: Colors.white,
                    ),
                    onSubmit: () => Navigator.of(context).push(
                      PageTransition(
                        child: Home(),
                        type: PageTransitionType.fade,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 0),
                      child: Container(
                        height: 243,
                        child: CarouselSlider(
                          slideTransform: StackTransform(),
                          scrollDirection: Axis.horizontal,
                          slideIndicator: CircularSlideIndicator(
                            padding: EdgeInsets.only(bottom: 7),
                            currentIndicatorColor: Colors.white,
                            indicatorBackgroundColor: Colors.black12,
                          ),
                          unlimitedMode: true,
                          children: [
                            LisaVid1(),
                            LisaVid2(),
                            LisaVid3(),
                            LisaVid4(),
                            LisaVid5(),
                            LisaVid6(),
                            LisaVid7(),
                            LisaVid8(),
                            LisaVid9(),
                            LisaVid10(),
                            LisaVid11(),
                            LisaVid12(),
                            LisaVid13(),
                            LisaVid14(),
                            LisaVid15(),
                            LisaVid16(),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: GradientText(
                        'stocks videos',
                        style: GoogleFonts.bebasNeue(
                          fontSize: 40,
                        ),
                        gradient: LinearGradient(colors: [
                          Colors.white,
                          Colors.white,
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 0),
                      child: Container(
                        height: 243,
                        child: CarouselSlider(
                          slideTransform: StackTransform(),
                          scrollDirection: Axis.horizontal,
                          slideIndicator: CircularSlideIndicator(
                            padding: EdgeInsets.only(bottom: 7),
                            currentIndicatorColor: Colors.white,
                            indicatorBackgroundColor: Colors.black12,
                          ),
                          unlimitedMode: true,
                          children: [
                            CLisaVid1(),
                            CLisaVid2(),
                            CLisaVid3(),
                            CLisaVid4(),
                            CLisaVid5(),
                            CLisaVid6(),
                            CLisaVid7(),
                            CLisaVid8(),
                            CLisaVid9(),
                            CLisaVid10(),
                            CLisaVid11(),
                            CLisaVid12(),
                            CLisaVid13(),
                            CLisaVid14(),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: GradientText(
                        'crypto videos',
                        style: GoogleFonts.bebasNeue(
                          fontSize: 40,
                        ),
                        gradient: LinearGradient(colors: [
                          Colors.white,
                          Colors.white,
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 0),
                      child: Container(
                        height: 243,
                        child: CarouselSlider(
                          slideTransform: StackTransform(),
                          scrollDirection: Axis.horizontal,
                          slideIndicator: CircularSlideIndicator(
                            padding: EdgeInsets.only(bottom: 7),
                            currentIndicatorColor: Colors.white,
                            indicatorBackgroundColor: Colors.black12,
                          ),
                          unlimitedMode: true,
                          children: [
                            FLisaVid1(),
                            FLisaVid2(),
                            FLisaVid3(),
                            FLisaVid4(),
                            FLisaVid5(),
                            FLisaVid6(),
                            FLisaVid7(),
                            FLisaVid8(),
                            FLisaVid9(),
                            FLisaVid10(),
                            FLisaVid11(),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: GradientText(
                        'etf videos',
                        style: GoogleFonts.bebasNeue(
                          fontSize: 40,
                        ),
                        gradient: LinearGradient(colors: [
                          Colors.white,
                          Colors.white,
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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