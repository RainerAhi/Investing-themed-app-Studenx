import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:page_transition/page_transition.dart';
import 'package:studenx_oige/AktsiadFolder/Aktsiad.dart';
import 'package:studenx_oige/pages/Kodu.dart';


class Meemid extends StatefulWidget {
  const Meemid({Key? key}) : super(key: key);

  @override
  State<Meemid> createState() => _MeemidState();
}

class _MeemidState extends State<Meemid> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
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
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      color: Color(0xff9055ff),
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.arrow_circle_left_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 600,
                child: CarouselSlider(
                  slideTransform: ParallaxTransform(),
                  slideIndicator: CircularSlideIndicator(
                    padding: EdgeInsets.only(bottom: 30),
                    currentIndicatorColor: Colors.white,
                    indicatorBackgroundColor: Colors.black12,
                  ),
                  unlimitedMode: true,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 100,
                        color: Colors.deepPurple,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 100,
                        color: Colors.cyan,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}