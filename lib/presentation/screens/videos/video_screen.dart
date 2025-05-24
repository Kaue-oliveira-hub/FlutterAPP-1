import  'package:flutter/material.dart';
import 'package:flutter_app1master/config/config.dart';
import 'package:flutter_app1master/presentation/widgets/widgets.dart';


class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {

bool satusPortantes = true;

List <VideoPost> videos = [];

Future<void> portamProximamPaginam() async { 
  
   await Future.delayed(const Duration(seconds: 2));

  videos.addAll(videoPosts);
 
  satusPortantes = false;

 setState(() { });
 
 }

@override
  void initState() {
   
    portamProximamPaginam();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Videos'),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: satusPortantes ? const Center(child: CircularProgressIndicator( strokeWidth: 4, color: Colors.lightGreen,),) 
      : VideoScrollableView(videos: videos)
      
    );
  }
}