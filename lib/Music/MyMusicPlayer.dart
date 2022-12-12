import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'dart:math' as math;

class MyMusic extends StatefulWidget {
  const MyMusic({Key? key}) : super(key: key);

  @override
  State<MyMusic> createState() => _MyMusicState();
}

class _MyMusicState extends State<MyMusic> {

  late YoutubePlayerController ytController;

  @override
  void initState() {
    ytController = YoutubePlayerController(
      initialVideoId: "jfKfPfyJRdk",
      flags: YoutubePlayerFlags(
        autoPlay: false,
        isLive: true,
        hideThumbnail: true,
      ),
    );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 73.5),
          child: ClipPath(
            clipper: WaveClipperHx(),
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color(0xffFF5F6D),
                    Color(0xffFF5F6D),
                  ],
                ),
              ),
              height: 0,
              width: 0,
              child: YoutubePlayer(
                width: 200,
                controller: ytController,
                showVideoProgressIndicator: false,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 0),
          child: GestureDetector(
            onTap: () {
              if(ytController.value.isPlaying) {
                ytController.pause();
              } else {
                ytController.play();
              }
            },
            child: ClipPath(
              clipper: WaveClipperHx(),
              child: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Color(0xffFF5F6D),
                      Color(0xffFF5F6D),
                    ],
                  ),
                ),
                height: 170,
                width: 246,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 25),
                  child: Center(
                    child: Image.asset("assets/images/muusika.png",
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
class GradientText extends StatelessWidget {
  const GradientText(
      this.text, {
        required this.gradient,
        this.style,
      });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

class WaveClipperHx extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width*0.6900000,0);
    path0.lineTo(size.width*0.3100000,0);
    path0.lineTo(size.width*0.1180000,size.height*0.5000000);
    path0.lineTo(size.width*0.3100000,size.height);
    path0.lineTo(size.width*0.6900000,size.height);
    path0.lineTo(size.width*0.8780000,size.height*0.5000000);
    path0.lineTo(size.width*0.6900000,0);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
