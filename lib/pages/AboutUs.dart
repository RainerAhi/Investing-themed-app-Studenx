import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:studenx_oigev2/AktsiadFolder/WallStreetJournal.dart';
import 'package:studenx_oigev2/notes_pages/notes_aktsiad.dart';
import 'package:studenx_oigev2/pages/Kodu.dart';
import 'package:lottie/lottie.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
              ],
            ),
          ),
          height: 1000,
          width: 500,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 100,
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
                  Row(
                    children: [
                      GestureDetector(
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
                              Icons.subdirectory_arrow_left,
                              color:  Colors.white,
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("Kes me oleme",
                          style: GoogleFonts.bebasNeue(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 500,
                  width: 350,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.white12,
                        Colors.white12,
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Oleme kaks 8-nda klassi õpilast Jüri Gümnaasiumist ja loome loovtööga seoses investeerimise äpi. Oleme suured investeerimise huvilised ning tegeleme sellega igapäevaselt. Koolis oleme märganud, et noored ja ka meie sõbrad tahaksid investeerida ja raha teenida, et omale asju osta, kuid ei tea sellest midagi.",
                          style: GoogleFonts.sansita(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Lottie.network("https://assets10.lottiefiles.com/packages/lf20_27klftwl.json")
                    ],
                  ),
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
                              height: 150,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
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