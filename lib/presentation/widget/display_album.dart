import 'package:flutter/material.dart';
import 'package:providers/domain/album.dart';

class DisplayAlbum extends StatelessWidget {
  final double width;
  final double heigth;
  final Album album;
  const DisplayAlbum(
      {super.key, this.width = 150, this.heigth = 150, required this.album});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: heigth,
      width: width,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(child: Image.asset(album.cover,
            )),
            Text(
              album.artist,
              style: theme.textTheme.titleLarge,
            ),
            Text(
              album.title,
              style: theme.textTheme.titleSmall,
            )
          ],
        ),
      ),
    );
  }
}
