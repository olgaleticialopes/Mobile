import 'package:flutter/material.dart';
import 'package:providers/domain/album.dart';
import 'package:providers/presentation/widget/display_album.dart';

class AlbumCarousel extends StatelessWidget {
  final List<Album> albums;
  const AlbumCarousel({super.key, required this.albums});

  @override
  Widget build(BuildContext context) {
    const height = 250.0;
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.all(10),
      height: height,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          children: [
            Text('Todos os álbuns',
            style: theme.textTheme.titleMedium,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: albums.length,
                itemBuilder: (context, index) => DisplayAlbum(album: albums[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
