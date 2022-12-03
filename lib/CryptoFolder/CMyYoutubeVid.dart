import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../pages/Kodu.dart';

class CMyYoutubeVid extends StatefulWidget {
  const CMyYoutubeVid({Key? key}) : super(key: key);

  @override
  State<CMyYoutubeVid> createState() => _CMyYoutubeVidState();
}

class _CMyYoutubeVidState extends State<CMyYoutubeVid> {

  late YoutubePlayerController ytController;

  @override
  void initState() {
    ytController = YoutubePlayerController(
      initialVideoId: "VYWc9dFqROI",
      flags: YoutubePlayerFlags(
        autoPlay: false,
        showLiveFullscreenButton: true,

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