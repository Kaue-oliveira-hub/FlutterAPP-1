import  'package:flutter/material.dart';
import 'package:flutter_app1master/presentation/widgets/video_buttons.dart';
import 'package:flutter_app1master/presentation/widgets/widgets.dart';

import '../../config/config.dart';
import 'package:flutter_app1master/presentation/widgets/full_screen_player.dart';


class VideoScrollableView extends StatelessWidget{

  final List<VideoPost> videos;

  const  VideoScrollableView({
    super.key,
    required this.videos,
    
    });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder:(context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            SizedBox.expand(
               child: FullScreenPlayer(
                descriptio: videoPost.description,
                videoUrl: videoPost.videoUrl,
                
               ) // Make sure FullScreenPlayer is imported or defined
            ),
            //videos
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost),
              )
           
          ],
        );
      },
      
    );
  }
}