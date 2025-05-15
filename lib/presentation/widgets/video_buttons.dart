import  'package:flutter/material.dart';
import 'package:flutter_app1master/config/config.dart';

class VideoButtons extends StatelessWidget{

  final VideoPost video;

  const VideoButtons({
  super.key,
  required this.video,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        _PropiumButton(valorem: video.likes, iconData: Icons.favorite , iconColor:Colors.red, ),
        _PropiumButton(valorem: video.views, iconData: Icons.remove_red_eye_outlined,  ),

      ]
    );  
  }
}


class _PropiumButton extends StatelessWidget{

  final int valorem;
  final IconData iconData;
  final Color? color;

  const _PropiumButton({
      required this.valorem,
      required this.iconData,
      iconColor
    }):color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        IconButton(onPressed: (){ }, 
      icon: Icon(iconData, color: color, size: 30,)
      ),
      Text('$valorem', style: TextStyle(color: Colors.white),)
      ],
    );
  }
}
