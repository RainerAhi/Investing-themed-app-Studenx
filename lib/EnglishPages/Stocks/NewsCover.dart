import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:studenx_oigev2/AktsiadFolder/WallStreetJournal.dart';
import 'package:studenx_oigev2/EnglishPages/Stocks/Cnbc2.dart';
import 'package:studenx_oigev2/EnglishPages/Stocks/Wsj.dart';
import 'package:studenx_oigev2/EnglishPages/Stocks/YahooFinance.dart';
import 'package:studenx_oigev2/News/MyNews.dart';

import '../../AktsiadFolder/Cnbc1.dart';
import '../../AktsiadFolder/YahooFn.dart';


class NewsCover extends StatefulWidget {
  const NewsCover({Key? key}) : super(key: key);

  @override
  State<NewsCover> createState() => _NewsCoverState();
}

class _NewsCoverState extends State<NewsCover> with SingleTickerProviderStateMixin{

  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this
    );
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
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
                              title: Text("Why you should follow the news?",
                                style: GoogleFonts.bebasNeue(
                                  fontSize: 40,
                                  color: Colors.white,
                                ),
                              ),
                              content: Text(
                                "Thousands of things are changing in the world in every field, even in the economy and investment markets. They help you make decisions. For example if there is a war somewhere, it is not wise to invest in their shares, because if something happens to the company, its share prices will inevitably fall. This happened to an entire economic sector in the 2022 Russia-Ukraine war.",
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
                        child: Text("Why It’s important?",
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
                              child: YahooFinance(),
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
                              child: Image.asset("assets/images/yahoo.png"),
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
                              child: Wsj(),
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
                              child: Image.asset("assets/images/wsj.jpg"),
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
                              child: Cnbc2(),
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
                              child: Image.asset("assets/images/cnbc.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 127, left: 20),
                  child: Text("follow the news",
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
          padding: const EdgeInsets.only(left: 160),
          child: Lottie.network("https://assets6.lottiefiles.com/packages/lf20_mp6wwkvx.json",
            controller: _controller,
            height: 200,
          ),
        ),
      ],
    );
  }
}