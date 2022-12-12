import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid1.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid10.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid11.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid12.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid13.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid14.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid15.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid16.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid2.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid3.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid4.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid5.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid6.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid7.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid8.dart';
import 'package:studenx_oigev2/AktsiadFolder/LisaVid9.dart';
import 'package:page_transition/page_transition.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid1.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid10.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid11.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid12.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid13.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid14.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid2.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid3.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid4.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid5.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid6.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid7.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid8.dart';
import 'package:studenx_oigev2/CryptoFolder/CLisaVid9.dart';
import 'package:studenx_oigev2/pages/Kodu.dart';

import 'FLisaVid1.dart';
import 'FLisaVid10.dart';
import 'FLisaVid11.dart';
import 'FLisaVid2.dart';
import 'FLisaVid3.dart';
import 'FLisaVid4.dart';
import 'FLisaVid5.dart';
import 'FLisaVid6.dart';
import 'FLisaVid7.dart';
import 'FLisaVid8.dart';
import 'FLisaVid9.dart';

class RohkemVideosi extends StatefulWidget {
  const RohkemVideosi({Key? key}) : super(key: key);

  @override
  State<RohkemVideosi> createState() => _RohkemVideosiState();
}

class _RohkemVideosiState extends State<RohkemVideosi> {
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
                    text: "lisa videod",
                    textStyle: GoogleFonts.bebasNeue(
                      fontSize: 45,
                      color: Colors.white,
                    ),
                    onSubmit: () => Navigator.of(context).push(
                      PageTransition(
                        child: Kodu(),
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
                        'aktsiate videod',
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
                        'krüpto videod',
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
                        'etf videod',
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
