import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:studenx_oigev2/CryptoFolder/CMyCreators.dart';
import 'package:studenx_oigev2/CryptoFolder/CTase1.dart';
import 'package:studenx_oigev2/CryptoFolder/CTase2.dart';
import 'package:studenx_oigev2/CryptoFolder/CTase3.dart';
import 'package:studenx_oigev2/CryptoFolder/CUudisedCover.dart';
import 'package:studenx_oigev2/CryptoFolder/Cryptoprices.dart';
import 'package:studenx_oigev2/CryptoFolder/RohkemKrupto.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:studenx_oigev2/pages/Kodu.dart';
import 'package:page_transition/page_transition.dart';
import '../AktsiadFolder/Meemid.dart';
import '../pages/socials.dart';
import 'CTestiTeadmisidUI.dart';
import 'CVaataKindlastiVideod.dart';

class Crypto extends StatefulWidget {
  const Crypto({Key? key}) : super(key: key);

  @override
  State<Crypto> createState() => _CryptoState();
}

class _CryptoState extends State<Crypto> with SingleTickerProviderStateMixin {

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
                  padding: const EdgeInsets.only(left: 265, top: 15),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      PageTransition(
                        child: Kodu(),
                        type: PageTransitionType.fade,
                        alignment: Alignment.center,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        color: Colors.transparent,
                        height: 50,
                        width: 60,
                        child: Icon(
                          Icons.arrow_circle_left,
                          color:  Colors.white,
                          size: 55,
                        ),
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
              child: CTestiTeadmisid(),
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
                                    fontSize: 15,
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
                    padding: const EdgeInsets.only(top: 15, bottom: 0, left: 215, right: 10),
                    child: Image.asset("assets/images/hinnad.png",
                      height: 120,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: CVaataKindlastiVideod(),
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
                        "TOP CREATORID",
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
              child: CMyCreators(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: CUudisedCover(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Meemid(),
            ),
            Stack(
              children: [
                RotatedBox(
                  quarterTurns: 2,
                  child: Stack(
                    children: [
                      ClipPath(
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