class VideoPost {
  final String urlVideo;
  final String caption;
  final int likes;
  final int vistas;

  VideoPost({ required this.urlVideo, required this.caption,
              this.likes=0,
              this.vistas=0});
}
