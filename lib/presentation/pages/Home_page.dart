import 'package:flutter/material.dart';

 class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Teste seu conhecimento 	(=^-ω-^=)'),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, "/question");
          }, 
          child:  const Text('Começar!'),
          )
        ],
      )),
    );
  }
}