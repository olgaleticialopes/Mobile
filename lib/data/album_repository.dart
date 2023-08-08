import 'package:providers/domain/album.dart';
import 'package:providers/domain/music.dart';

List<Album> loadAlbums(){
  return <Album>[
    Album(artist: 'Artista 1', tittle: 'xxx', yearReleased: 2022, cover: 'assets/ghostmane.jpg', musics:<Music>[
      Music(tittle: 'Musica 1', number: 1, duration: '02:30'),     
      Music(tittle: 'Musica 2', number: 2, duration: '04:30'),
      Music(tittle: 'Musica 3', number: 3, duration: '02:30'),
    ])
  ];
}