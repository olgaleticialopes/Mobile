import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context); 
    var tittlestyle = theme.textTheme.headline2?.copyWith(
      fontWeight:  FontWeight.w800,
    );
    var bodystyle = theme.textTheme.bodyText1?.copyWith(
       fontWeight:  FontWeight.w800,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          Text('Naruto', style: tittlestyle!! ,),
          Padding(
          //padging o espaçamento e da margem para dentro e margin da margem para fora
            padding: const EdgeInsets.all(12),
            child: Image.asset('lib/assets/images/naruto.jpeg'),
            ),

          Container( margin: const EdgeInsets.only(
            top: 18,
            bottom: 18,
          ),
          child:  Text('Ramem é o muito famoso do anime Naruto, onde o protagonista é um tremendo fã! ', style: bodystyle,),
          ),

          Column(
            children: const [ 
              Text('Muito gosotoso!'),
              Text('É saboroso!'),
              Text('Nutritivo!'),
              Text('Me come!'),
            ],
          )

        ],
      ),
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naruto',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());