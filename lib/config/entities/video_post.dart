

class VideoPost {
  final String description;
  final String videoUrl;
  final int likes;
  final int views;
 
 VideoPost({
    required this.description,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });
}