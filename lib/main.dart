//lista de musicas dart// 
import 'package:flutter/material.dart';


class MusicaWidget extends StatelessWidget {
  
  final String possicao;
  final String nome; 
  
  const MusicaWidget({super.key, required this.possicao, required this.nome});

  @override
  Widget build(BuildContext context) {
   
    return  SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(possicao),
                Expanded(
                    child: Center(
                  child: Text(nome),
                ))
              ],
            ),
          );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
     final musicas = [
         'Intro.Desolation',
          'Nihil',
          'Flesh',
         'Bonesaw',
          'Trench Coat',
          'The Singularity',
           'Ballgag',
          'Androids Dream Of Electric Sheep',
           'Inside',
         'Gatteka',
         'Black Blood',
          'My Heart Of Glass',       
          ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('N / O / I / S / E'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: musicas.length,
        itemBuilder: (context, index) {
          return MusicaWidget(
            possicao: (index +1).toString(),
            nome: musicas[index],
          );
        }),     
      );
    
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Álbum",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const Home(),
    );
  }
}

void main() => runApp(const Aplicacao());

/* MusicaWidget(possicao:'1', nome: 'Intro.Desolation', ),
          MusicaWidget(possicao:'2', nome: 'Nihil'),
          MusicaWidget(possicao:'3', nome: 'Flesh'),
          MusicaWidget(possicao:'4', nome: 'Bonesaw'),
          MusicaWidget(possicao:'5', nome: 'Trench Coat'),
          MusicaWidget(possicao:'6', nome: 'The Singularity'),
          MusicaWidget(possicao:'7', nome: 'Ballgag'),
          MusicaWidget(possicao:'8', nome: 'Androids Dream Of Electric Sheep'),
          MusicaWidget(possicao:'9', nome: 'Inside'),
          MusicaWidget(possicao:'10', nome: 'Gatteka'),
          MusicaWidget(possicao:'11', nome: 'Black Blood'),
          MusicaWidget(possicao:'12', nome: 'My Heart Of Glass'),    */   