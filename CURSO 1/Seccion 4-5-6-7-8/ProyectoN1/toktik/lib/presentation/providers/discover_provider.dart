import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/repositories/video_posts_repositories_impl.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostsRepositoriesImpl videoPostsRepositoriesImpl;
  List<VideoPost> videos = [];
  bool initialLoading = true;

  DiscoverProvider({required this.videoPostsRepositoriesImpl});

  Future<void> loadNextPage() async {

    final newVideos =
        await videoPostsRepositoriesImpl.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
