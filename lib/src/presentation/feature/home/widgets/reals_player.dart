import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../model/real_model.dart';



class RealsPlayer extends StatelessWidget {
  const RealsPlayer({
    super.key,
    required this.realsObject,
  });

  final RealsObject realsObject;

  playVideoReals(String videoUrl) {
    final FlickManager flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(
      Uri.parse(videoUrl),
    ));

    return flickManager;
  }

  @override
  Widget build(BuildContext context) {
    return realsObject.videoUrl.isNotEmpty
        ? FlickVideoPlayer(
            flickManager: playVideoReals(realsObject.videoUrl),
          )
        : Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(realsObject.imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          );
  }
}
