import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:studenx_oigev2/CryptoFolder/CoinT.dart';
import 'package:studenx_oigev2/CryptoFolder/Coind.dart';
import 'package:studenx_oigev2/CryptoFolder/Investope.dart';


class CUudisedCover extends StatefulWidget {
  const CUudisedCover({Key? key}) : super(key: key);

  @override
  State<CUudisedCover> createState() => _CUudisedCoverState();
}

class _CUudisedCoverState extends State<CUudisedCover> with SingleTickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 75),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white12, width: 10),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffFF5F6D),
                  Color(0xffFF5F6D),
                  Color(0xffFFC371),
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            height: 200,
            width: 350,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
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
                              title: Text("Miks jälgida uudiseid",
                                style: GoogleFonts.bebasNeue(
                                  fontSize: 40,
                                  color: Colors.white,
                                ),
                              ),
                              content: Text(
                                "Maailmas muutub tuhandeid asju igas valdkonnas, isegi majanduses ja investeerimis turgudel. Need aitavad sul otsuseid teha. Nt. kui kuskil on sõda, siis nende aktsiatesse ei ole mõistlik investeerida, sest kui firmaga midagi juhtub, siis paratamatult kukuvad ta aktsiahinnad. See juhtus terve majandussektoriga 2022 Venemaa- Ukraina sõjas.",
                                style: GoogleFonts.sansita(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              backgroundColor:  Color(0xffFFC371),
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
                        child: Text("Miks jälgida?",
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
                  padding: const EdgeInsets.only(top: 55),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: MaterialButton(
                          height: 70,
                          minWidth: 10,
                          onPressed: () => Navigator.of(context).push(
                            PageTransition(
                              child: Coind(),
                              type: PageTransitionType.fade,
                              alignment: Alignment.center,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Ink(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xffFF5F6D),
                                  Color(0xffFFC371),
                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              child: Image.asset("assets/images/coindesk.png"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: MaterialButton(
                          height: 70,
                          minWidth: 10,
                          onPressed: () => Navigator.of(context).push(
                            PageTransition(
                              child: CoinT(),
                              type: PageTransitionType.fade,
                              alignment: Alignment.center,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Ink(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xffFF5F6D),
                                  Color(0xffFFC371),
                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              child: Image.asset("assets/images/cointele.png"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 160),
                        child: MaterialButton(
                          height: 70,
                          minWidth: 10,
                          onPressed: () => Navigator.of(context).push(
                            PageTransition(
                              child: Investope(),
                              type: PageTransitionType.fade,
                              alignment: Alignment.center,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Ink(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xffFF5F6D),
                                  Color(0xffFFC371),
                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              child: Image.asset("assets/images/investopedia.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 127, left: 20),
                  child: Text("vaata uudiseid",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 0, left: 185, right: 10),
          child: Image.asset("assets/images/uudised.png",
            height: 140,
          ),
        ),
      ],
    );
  }
}