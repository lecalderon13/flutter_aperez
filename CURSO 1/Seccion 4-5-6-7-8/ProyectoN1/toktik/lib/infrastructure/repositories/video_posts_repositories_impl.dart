import 'package:toktik/domain/entities/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/repositories/video_posts_repositories.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoPostsRepositoriesImpl implements VideoPostsRepositories {
  final VideoPostsDatasource videosDatasource;

  VideoPostsRepositoriesImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}
