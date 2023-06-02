import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/data/produto_repository.dart';
import 'package:providers/presentation/page/home_page.dart';
import 'package:providers/service/catalogo_service.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => Catalogo(itens: carregaCatalogo())),
      ],

      child: app(),
      
    );
  }

  Widget app() => MaterialApp(
      title: 'Lojinha',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
}