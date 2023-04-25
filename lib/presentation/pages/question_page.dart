import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Question 1'),
        ),
        body: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: Column(
            children: [
              const Expanded(
                  child: Text(
                      'Qual é a cor predominante do tubarão branco?'),
                      ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _visible = false;
                          });
                        },
                        child: const Text('Branco'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Cinza'),
                      )
                    ],
                  )),
             
            ],
          ),
        ));
  }
}
