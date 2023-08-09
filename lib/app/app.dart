import 'package:flutter/material.dart';
import 'package:providers/presentation/page/home_page.dart';
import 'package:providers/presentation/page/login_page.dart';
import 'package:providers/presentation/page/track_list_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musica',
      theme: ThemeData(primarySwatch: Colors.pink),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/track-list':(context) =>  const TrackListPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
