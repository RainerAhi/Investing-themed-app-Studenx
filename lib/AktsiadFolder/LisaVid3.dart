import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../pages/Kodu.dart';

class LisaVid3 extends StatefulWidget {
  const LisaVid3({Key? key}) : super(key: key);

  @override
  State<LisaVid3> createState() => _LisaVid3State();
}

class _LisaVid3State extends State<LisaVid3> {

  late YoutubePlayerController ytController;

  @override
  void initState() {
    ytController = YoutubePlayerController(
      initialVideoId: "uNH2H-f2D5E",
      flags: YoutubePlayerFlags(
        autoPlay: false,

      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Container(
            height: 240,
            width: 490,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.white12,
                    Colors.white12,
                  ],)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 44),
              child: YoutubePlayerBuilder(
                player: YoutubePlayer(
                  width: 300,
                  controller: ytController,
                  showVideoProgressIndicator: true,
                ), builder: (BuildContext , player) {
                return Column();
              },
              ),
            ),
          ),
        ),
      ],
    );
  }
}