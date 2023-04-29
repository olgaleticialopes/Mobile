import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/pages/home_page.dart';
import 'package:flutter_application_1/presentation/pages/question_page.dart';
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'quiz',
    theme: ThemeData(
      primarySwatch: Colors.pink,
    ),
    initialRoute: "/",
    routes: {
      "/":(context) => const HomePage(),
      "/question": (context) => const QuestionPage(),
    }

    );
  }
}