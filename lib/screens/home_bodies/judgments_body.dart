import 'package:flutter/material.dart';
import 'package:tafweed/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class JudgmentsBody extends StatefulWidget {
  const JudgmentsBody({super.key});

  @override
  State<JudgmentsBody> createState() => _JudgmentsBodyState();
}

class _JudgmentsBodyState extends State<JudgmentsBody> {
  late YoutubePlayerController _controller1 ;
  late YoutubePlayerController _controller2 ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller1 = YoutubePlayerController(
      initialVideoId: 'JT6B0vudLZ4',
      flags: YoutubePlayerFlags(
          autoPlay: false,
          showLiveFullscreenButton: false
      ),
    );

    _controller2 = YoutubePlayerController(
      initialVideoId: 'BHIUSu0nkHM',
      flags: YoutubePlayerFlags(
          autoPlay: false,
          showLiveFullscreenButton: false
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: YoutubePlayer(
              aspectRatio: 14/9,
              controller: _controller1,
              showVideoProgressIndicator: true,
              progressIndicatorColor: mainColor,
              progressColors: const ProgressBarColors(
                playedColor: mainColor,
                handleColor: mainColor,
              ),
            ),
          ),
          SizedBox(height: 15,),
          ClipRRect(     
            borderRadius: BorderRadius.circular(6),
            child: YoutubePlayer(
              aspectRatio: 14/9,
              controller: _controller2,
              showVideoProgressIndicator: true,
              progressIndicatorColor: mainColor,
              progressColors: const ProgressBarColors(
                playedColor: mainColor,
                handleColor: mainColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}