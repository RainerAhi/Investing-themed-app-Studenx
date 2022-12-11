import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../pages/Kodu.dart';
import 'package:google_fonts/google_fonts.dart';

class MyYoutubeVid extends StatefulWidget {
  const MyYoutubeVid({Key? key}) : super(key: key);

  @override
  State<MyYoutubeVid> createState() => _MyYoutubeVidState();
}

class _MyYoutubeVidState extends State<MyYoutubeVid> {

  late YoutubePlayerController ytController;

  @override
  void initState() {
    ytController = YoutubePlayerController(
      initialVideoId: "p7HKvqRI_Bo",
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
          borderRadius: BorderRadius.circular(12),
          child: Container(
            height: 190,
            width: 490,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                  ],)
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
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