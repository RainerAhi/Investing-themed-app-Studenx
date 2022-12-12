import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'Kodu.dart';

class RaskedMoisted extends StatefulWidget {
  const RaskedMoisted({Key? key}) : super(key: key);

  @override
  State<RaskedMoisted> createState() => _RaskedMoistedState();
}

class _RaskedMoistedState extends State<RaskedMoisted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: ListView(
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
                Padding(
                  padding: const EdgeInsets.only(left: 310, top: 15),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Rasked mõisted",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 58,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 100,
                        width: 350,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.white12, width: 4),
                          color: Colors.white12,
                        ),
                        child: Wrap(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("investeering",
                                  style: GoogleFonts.bebasNeue(
                                    fontSize: 35,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(Icons.forward,
                                  color: Colors.white,
                                  size: 35,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 7, right: 7),
                              child: Text("Raha eest millegi ostmine, mille eesmärk on kasumit teenida.",
                                style: GoogleFonts.sansita(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("aktsia",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Väärtpaber, mis näitab sinu osa ettevõttes.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("krüpto",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Anonüümne ja detsentraliseeritud valuuta.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("IPO",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Aktsiate esmane pakkumine.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("investor",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Investeerimisega tegelev isik.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("dividendid",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Osamaksed investorile.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("kvartal",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Kvartalid on nagu aastaajad, neid on 4 ja nende järgi makstakse dividende.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("S&P 500",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Indeksfond mis jälgib 500 USA suurimat ettevõtet.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Portfell/portfoolio",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Investeeringutest koosnev kogum.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Pikaajaline investeering",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Investeering, mida oled hoidnud rohkem kui 12 kuud.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Lühiajaline investeering",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Investeering, mida oled hoidnud vähem kui 12 kuud.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Aktsiaturg",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Ettevõtete väärtpaberitega kauplemise koht.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Great Depression",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Ülemaailmne majanduskriis(1929-1939).",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Tulu/Kasum",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Investeeringust saadud raha, kulud-tulud= kasum.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Varaklass",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Konkreetne investeeringu kategooria.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dollar-cost averaging",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Investeerimine sel viisil, et iga teatud aja tagant investeerid teatud summa.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Day trader",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Inimene, kes igapäevaselt kaupleb aktsiatega.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Investeeringute tootlus",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Mõõdab investeeritud rahast saadavat kasu.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("ETF",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Börsil kaubeldav fond.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Indeksfond",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Fond, mis järgib kindlat indeksit.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Börs",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Turg, kus kaubeldakse väärtpaberitega.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Tootlus",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Kasumiprotsent. Sa investeerid 100 eurot ja selle tootlus on 10%, siis saad 10 eurot kasu.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Väärtpaber",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Finantsinstrumendid, millel on väärtus ja millega saab kaubelda osapoolte vahel.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Võlakirjad",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Fikseeritud tuluga finantstooted.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Sektor",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Konkreetne osa või segment.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Kauplemismaht",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Palju on millegagi kaubeldud.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Kulusuhe",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Summa, mida peab maksma fondide haldajatele.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Eelarve",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Rahaline plaan, kulude ja tulude kalkulatsioon.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Turukapital/market cap",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Kogus x hind = market cap.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Vabalt kaubeldavad aktsiad",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 32,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("aktsiad millega saab avalikkus kaubelda.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Indeks",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Mingit sektorit või kategooriat jälgiv nimekiri.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Nasdaq",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Üks suurimaid ülemaailmseid väärtpaberi kauplemis kohti.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("DJIA",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Dow Jones Industrial Average",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("iShares",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Üks suurimaid ning tuntumaid ETF-ide pakkujaid maailmas.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Eelisaktsia",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Õigus dividendidele enne lihtaktsia omanike, pankroti korral eelised, pole hääletusõigust.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Lihtaktsia",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Annavad õiguse dividendidele ning neil on hääletusõigus.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Kasvuaktsia",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Aktsiad, mis eeldatavasti kasvavad laiema turuga võrreldes kiiremini.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Väärtusaktsia",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Aktsiad, mis majanduse taastumise korral ületavad teiste tootlust.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("ESG aktsia",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Keskkonnaga seotud firma, näiteks toodab roheenergia tootmise seadmeid.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Penny aktsia",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Aktsia, mille väärtus on alla 5 dollari.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Blue-chip aktsia",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Aktsiad, mis on suurte ja tuntud firmade omad.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Tsükliline aktsia",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Edu ja tulu tuleb tsüklite kaupa.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Mittetsükliline aktsia",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Aktsia, mille edu ei tule tsükliliselt, vaid on stabiilne.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Tuluaktsia",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Aktsia, mis annab regulaarset tulu dividendide kaudu.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Kaitseaktsia",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Aktsia, mis enamasti pakub ühtlast tootlust, ettevõtted, kes müüvad igapäevatarbeid.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("IPO aktsia",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Aktsia, mida pakutakse esmalt.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Karuturg",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Kindel langustrend, vähemalt -20% tipust.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Pulli/härjaturg",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Kindel tõusmistrend pikka aega.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Tõusev trend",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Hinnad tõusevad pikemat aega.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Langev trend",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Hinnad langevad pikemat aega.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Investeerimishorisont",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Investeerimis pikkus.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Ülekuumenenud majandus",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Pikk majanduskasv, tulemuseks töötute arvu suurenemine ja kõrge inflatsioon.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Big-cap",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Suure turukapitaliga firmad.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Small-cap",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Väikese turukapitaliga firmad.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Bitcoin",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Number 1 krüpto market capi järgi, suurim ning tuntum.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("NFT",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Unikaalne ning võltsimatu digitaalne ese.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Blockchain/ plokiahel",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Teatud tüüpi jagatud andmebaas.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Blockchain/ plokiahel",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Teatud tüüpi jagatud andmebaas.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("HODL",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Hold on for dear life ehk hoia iga hinna eest.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Krüpto exchange",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Koht, kus saab osta ja ka hoida krüptot.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Krüpto rahakott",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Koht, kus saab hoiustada krüptot.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Recovery phase",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Sõnad kindlas järjekorras, millega saab siseneda krüpto rahakottidesse.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Memecoin",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Meemi Põhjal loodud krüpto.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Staking",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Krüpto lukustamine teatud ajaks, et aidata plokiahela ehk blockchaini toimimist. ",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Detsentraliseeritud",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Mitte ühelgil inimesel või grupil ei ole ainuvõimu selle üle.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Krahh",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Kiireloomuline hindade langus.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Coin",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Tavaliselt maksevahend ning toimivad sõltumatul plokiahelal.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Token",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Mitu kasutusviisi ning toimivad olemasoleval plokiahelal ehk neil puudub oma plokiahel.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Mint",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("NFT ostmine enne, kui see avalikult müüki läheb.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Trade-mine",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Aktsiate kauplemine, ehk ostmine ja müümine.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Krüpto kaevandamine",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Krüpto hankimine arvutiga lahendades keeruliseid matemaatilisi probleeme.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Roadmap",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Dokument, kus on kirjas plaanid selle asja kohta.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Rug pull",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Krüpto, mille plaan on hind üles saada ja see hüljata ning rahaga minema joosta.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Valuuta",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Raha vorm, rahasüsteem ja seda rakendavad rahamärgid.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Whitepaper",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("Teabedokument, mille eesmärk on reklaamida ja tähelepanu tuua krüptole.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white12, width: 4),
                      color: Colors.white12,
                    ),
                    child: Wrap(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Ethereum",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.forward,
                              color: Colors.white,
                              size: 35,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Text("2. krüpto market capi poolest, suurim NFT krüpto.",
                            style: GoogleFonts.sansita(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            RotatedBox(
              quarterTurns: 2,
              child: Stack(
                children: [
                  Opacity(
                    opacity: 1,
                    child: ClipPath(
                      clipper: WaveClipperTwo(),
                      child: Container(
                        height: 120,
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
      ),
    );
  }
}
