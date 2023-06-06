import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/presentation/widgets/produto_item_list.dart';
import 'package:providers/service/catalogo_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final catalogo = context.read<Catalogo>();
    final itens = catalogo.withEstoque();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
        buildAppBar(context),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 14,
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate(
          (context, index) => index < itens.length?  ProdutoListItem(id: itens[index].id): null, 
          ),
          )
        ],
      ),

    );
  }

  Widget buildAppBar(BuildContext context) => SliverAppBar(
    title: const Text('Home'),
    floating: true,
    snap: true,
    actions: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
    ],
  );
}