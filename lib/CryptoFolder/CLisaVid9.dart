import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CLisaVid9 extends StatefulWidget {
  const CLisaVid9({Key? key}) : super(key: key);

  @override
  State<CLisaVid9> createState() => _CLisaVid9State();
}

class _CLisaVid9State extends State<CLisaVid9> {

  late YoutubePlayerController ytController;

  @override
  void initState() {
    ytController = YoutubePlayerController(
      initialVideoId: "wNxUQ2sJtso",
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