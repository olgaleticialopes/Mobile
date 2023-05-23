import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/lanche_repository.dart';
import 'package:flutter_application_1/domain/lanche.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final lanches = loadLanches();
    return Scaffold(
      appBar: AppBar(
        title:const Text("メニュー"),
      ),
      body: ListView.separated(
        separatorBuilder:  (context, index) => const Divider(),
        itemCount: lanches.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/lanche',
             arguments: lanches[index]
            );
          },
          child: Padding(padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(lanches[index].nome),
              Text(lanches[index].precoFormatado),
            ],
          ),
              ),
        ),
    ),
  );
  }
}