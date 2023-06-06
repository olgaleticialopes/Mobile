import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/domain/produto.dart';
import 'package:providers/service/catalogo_service.dart';

class ProdutoListItem extends StatelessWidget {
  final int id;

  const ProdutoListItem({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final produto = context.select<Catalogo, Produto>((catalog) => catalog.withEstoque().firstWhere((e) => e.id == id));

    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  produto.nome,
                  style: theme.textTheme.headline6,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Estoque: ${produto.estoque}"),
                Text("Preço: ${produto.precoFormatado}"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
