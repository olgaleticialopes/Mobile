import 'package:flutter/material.dart';
import 'package:providers/presentation/page/login_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Musica',
      theme: ThemeData(primarySwatch: Colors.pink),
      initialRoute: '/',
      routes: {
        '/': (context) =>  const LoginPage()
      },
    );
  
  }
}