import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/pages/home_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "カワイイ寿司へようこそ",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const Homepage(),
      },
    );
  }
}