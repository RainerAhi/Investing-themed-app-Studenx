import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:page_transition/page_transition.dart';

import '../../CryptoFolder/CMyYoutubeVid.dart';
import '../../CryptoFolder/CMyYoutubeVid2.dart';
import '../../CryptoFolder/CMyYoutubeVid3.dart';
import '../../CryptoFolder/CMyYoutubeVid4.dart';
import '../../CryptoFolder/CMyYoutubeVid5.dart';
import '../../CryptoFolder/CMyYoutubeVid6.dart';
import '../Stocks/MoreVideos.dart';

class CMustWatchVideos extends StatelessWidget {
  const CMustWatchVideos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                      padding: const EdgeInsets.only(top: 280, left: 260),
                      child: Text("swipe",
                        style: GoogleFonts.bebasNeue(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 250, left: 280),
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
                                child: MoreVideos(),
                                type: PageTransitionType.fade,
                                alignment: Alignment.center,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0, right: 0),
                              child: Text("More videos",
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
          padding: const EdgeInsets.only(left: 0, top: 25, bottom: 0),
          child: Center(
            child: Text(
              'must watch videos',
              style: GoogleFonts.bebasNeue(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
