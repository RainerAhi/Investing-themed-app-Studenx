import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:studenx_oigev2/EnglishPages/Home.dart';


class DifficultMeanings extends StatefulWidget {
  const DifficultMeanings({Key? key}) : super(key: key);

  @override
  State<DifficultMeanings> createState() => _DifficultMeaningsState();
}

class _DifficultMeaningsState extends State<DifficultMeanings> {
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
                        child: Home(),
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
                  child: Text("Difficult terms",
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
                                Text("investment",
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
                              child: Text("Buying something with money with the purpose of making a profit.",
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
                            Text("Stock",
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
                          child: Text("A security that shows your stock in the company.",
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
                            Text("Crypto/Cryptocurrency",
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
                          child: Text("Anonymous and decentralized currency.",
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
                          child: Text("Initial public offering of a stock.",
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
                          child: Text("A person engaged in investing.",
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
                            Text("dividends",
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
                          child: Text("Payments to the investor.",
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
                            Text("quarter",
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
                          child: Text("Quarters are like seasons, dividends are paid according to them and there are 4.",
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
                          child: Text("An index fund that tracks the 500 largest US companies.",
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
                            Text("Portfolio/portfolio",
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
                          child: Text("A collection of investments.",
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
                            Text("Long-term investment",
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
                          child: Text("An investment that you have held for more than 12 months.",
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
                            Text("Short-term investment",
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
                          child: Text("An investment that you have held for less than 12 months.",
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
                            Text("Stock market",
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
                          child: Text("A place for trading companies securities.",
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
                          child: Text("Global economic crisis (1929-1939).",
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
                            Text("Income/Profit",
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
                          child: Text("Money received from investment, costs-revenues= profit.",
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
                            Text("Asset Class",
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
                          child: Text("A specific investment category.",
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
                          child: Text("Investing in a way that every certain period of time you invest a certain amount of money.",
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
                          child: Text("A person who trades stocks on a daily basis.",
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
                            Text("Return on Investment",
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
                          child: Text("Measures the return on investment.",
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
                          child: Text("Exchange-traded fund.",
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
                            Text("Index fund",
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
                          child: Text("A fund that follows a specific index.",
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
                            Text("Stock Exchange",
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
                          child: Text("A market where securities are traded.",
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
                            Text("Yield",
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
                          child: Text("Profit percentage. Invest 100 euros and its return is 10%, then you get 10 euros profit.",
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
                            Text("Security",
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
                          child: Text("Financial instruments that have value and can be traded between parties.",
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
                            Text("Bonds",
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
                          child: Text("Fixed income financial products.",
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
                            Text("Sector",
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
                          child: Text("A specific part or segment.",
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
                            Text("Trading volume",
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
                          child: Text("How much something has been traded.",
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
                            Text("Expense Ratio",
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
                          child: Text("The money that has to be paid to fund managers.",
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
                            Text("Budget",
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
                          child: Text("Financial plan, cost and income calculation.",
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
                            Text("Market cap",
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
                          child: Text("Quantity x price = market cap.",
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
                            Text("Freely tradable stocks",
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
                          child: Text("Stocks that can be traded by the public.",
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
                            Text("Index",
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
                          child: Text("A list that tracks a sector or category.",
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
                          child: Text("One of the largest global securities trading places.",
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
                          child: Text("Dow Jones Industrial Average.",
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
                            Text("Cost ratio",
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
                          child: Text("Stocks of companies that can be traded.",
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
                          child: Text("One of the largest and best-known providers of ETFs in the world.",
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
                            Text("Preferred stocks",
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
                          child: Text("Give the right to dividends before the owners of ordinary stocks, do not carry voting rights.",
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
                            Text("Common stock",
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
                          child: Text("Owners are entitled to dividends and have voting rights.",
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
                            Text("Growth stocks",
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
                          child: Text("Stocks that are expected to grow faster than the broader market.",
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
                            Text("Value Stock",
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
                          child: Text("Stocks that outperform others when the economy recovers.",
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
                            Text("ESG stock",
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
                          child: Text("Environmental, social, and governance, for example related to green energy production.",
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
                            Text("Penny Stock",
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
                          child: Text("A stock that is worth less than 5 dollars.",
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
                            Text("Blue-chip stocks",
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
                          child: Text("Stocks that are owned by large and well-known companies.",
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
                            Text("Cyclical stock",
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
                          child: Text("Success and income come in cycles.",
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
                            Text("Non-cyclical stock",
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
                          child: Text("A stock whose success does not come cyclically, but is stable.",
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
                            Text("Income Stock",
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
                          child: Text("A stock that provides regular income through dividends.",
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
                            Text("Defensive Stock",
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
                          child: Text("A stock that mostly offers consistent returns, mostly companies that sell everyday goods.",
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
                            Text("IPO stock",
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
                          child: Text("A stocks first offering.",
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
                            Text("Bear market",
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
                          child: Text("A definite downward trend, at least -20% from the peak.",
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
                            Text("Bull Market",
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
                          child: Text("Definite uptrend.",
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
                            Text("Uptrend",
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
                          child: Text("Prices are rising for a longer period of time.",
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