import 'package:providers/domain/album.dart';
import 'package:providers/domain/music.dart';

List<Album> loadAlbums() {
  return <Album>[
    Album(
      artist: 'Ghostmane',
      title: 'anti-icon',
      yearReleased: 2022,
      cover: 'assets/antiicon.webp',
      musics: <Music>[
        Music(title: 'Track1', number: 1, duration: '03:45'),
        Music(title: 'Track2', number: 2, duration: '03:23'),
        Music(title: 'Track3', number: 3, duration: '03:11'),
        Music(title: 'Track4', number: 4, duration: '03:33'),
      ],
    ),
    Album(
      artist: 'Ghostmane',
      title: 'N-O-I-S-E',
      yearReleased: 2022,
      cover: 'assets/noise.webp',
      musics: <Music>[
        Music(title: 'Track1', number: 1, duration: '03:45'),
        Music(title: 'Track2', number: 2, duration: '03:23'),
        Music(title: 'Track3', number: 3, duration: '03:11'),
        Music(title: 'Track4', number: 4, duration: '03:33'),
      ],
    ),
     Album(
      artist: 'Ghostmane',
      title: 'anti-icon',
      yearReleased: 2022,
      cover: 'assets/antiicon.webp',
      musics: <Music>[
        Music(title: 'Track1', number: 1, duration: '03:45'),
        Music(title: 'Track2', number: 2, duration: '03:23'),
        Music(title: 'Track3', number: 3, duration: '03:11'),
        Music(title: 'Track4', number: 4, duration: '03:33'),
      ],
    ),
  ];
}
