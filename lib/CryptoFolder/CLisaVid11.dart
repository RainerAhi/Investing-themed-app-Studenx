import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../pages/Kodu.dart';

class CLisaVid11 extends StatefulWidget {
  const CLisaVid11({Key? key}) : super(key: key);

  @override
  State<CLisaVid11> createState() => _CLisaVid11State();
}

class _CLisaVid11State extends State<CLisaVid11> {

  late YoutubePlayerController ytController;

  @override
  void initState() {
    ytController = YoutubePlayerController(
      initialVideoId: "6dYc966_o4I",
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