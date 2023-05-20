import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/lanche.dart';

class LanchePage extends StatelessWidget {
  const LanchePage({super.key});

  @override
  Widget build(BuildContext context) {
    final lanche = ModalRoute.of(context)!.settings.arguments as Lanche;
    return Scaffold(
      appBar: AppBar(
        title: Text(lanche.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Center(
              child: Image.network(lanche.foto),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(lanche.nome),
                  Text(lanche.precoFormatado)
                ],
              ),
            ),
            Container(),
          ],
        ),
      ),

    );
  }
}