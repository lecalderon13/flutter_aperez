import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  // Estado de carga inicial
  bool initialLoading = true;

  // Lista de videos
  List<VideoPost> videos = [];

  // Método para cargar la siguiente página de videos
  Future<void> loadNextPage() async {
    try {
      // Simula un retraso para imitar una carga de datos real
      await Future.delayed(const Duration(seconds: 2));

      // Convierte los datos locales en entidades de VideoPost
      final List<VideoPost> newVideos = videoPosts
          .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
          .toList();

      // Añade los nuevos videos a la lista
      videos.addAll(newVideos);

      // Cambia el estado de carga inicial
      initialLoading = false;

      // Notifica a los widgets escuchando el cambio
      notifyListeners();
    } catch (e) {
      // Manejo de errores durante la carga
      debugPrint('Error loading videos: $e');
    }
  }
}
