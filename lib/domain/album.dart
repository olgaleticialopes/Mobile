import 'package:providers/domain/music.dart';

class Album {
  final String artist;
  final String title;
  final int yearReleased;
  final String cover;
  final List<Music> musics;

  Album(
      {required this.artist,
      required this.title,
      required this.yearReleased,
      required this.cover,
      required this.musics});
}
