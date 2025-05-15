import  'package:flutter/material.dart';

import '../../config/config.dart';


class VideoScrollableView extends StatelessWidget{

  final List<VideoPost> videos;

  const  VideoScrollableView({
    super.key,
    required this.videos,
    
    });

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
       children: [
       Container(color:  Color.fromARGB(255, 4, 247, 0)),
         Container(color: Color.fromARGB(255, 0, 0, 0)),
           Container(color: Color.fromARGB(255, 247, 0, 210)),
            Container(color:  Color.fromARGB(255, 214, 247, 0)),
             Container(color:  Color.fromARGB(255, 0, 247, 206)),
       ],
      
    );
  }
}