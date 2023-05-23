
import 'package:flutter_application_1/domain/lanche.dart';

List<Lanche> loadLanches() {
  return <Lanche>[
    Lanche(
      nome: "Japan Combo", 
      preco: 14.90, 
      ingredientes: ['Niguiri, omelete japonesa e sopa'], 
      foto: "lib/assets/japancombo.gif"
    ),
    Lanche(
      nome: "Bentô", 
      preco: 18.90, 
      ingredientes: ['Niguiri, omelete, carne assada, bacon'], 
      foto: "lib/assets/bento.jpg"
    ),
    Lanche(
      nome: "Japan combo II", 
      preco: 15.70, 
      ingredientes: ['Cachorro quente japones, bento com itens fritos e saladas'], 
      foto: "lib/assets/japancombo.gif2.gif",
    ),
    Lanche(
      nome: "Combo sushi", 
      preco: 20.12, 
      ingredientes: ['Combo de 8 peças'], 
      foto: "lib/assets/sushicombo"
    ),
    Lanche(
      nome: "Tokoyaki", 
      preco: 32.15, 
      ingredientes: ['Peixe assado, Salada, Shake e Sake de salmão'], 
      foto: "lib/assets/tokoyaki.gif"),
    Lanche(
      nome: "Sobremesa bolo", 
      preco: 32.15, 
      ingredientes: ['Massa crocante com recheio de sorvete de baunilha e cobertua a sua escolha.'], 
      foto: "lib/assets/bolinho.gif"),
    Lanche(
      nome: "Combo Camarão", 
      preco: 32.15, 
      ingredientes: ['Camarão empanado com salada'], 
      foto: "lib/assets/camarao.jpg"),
      Lanche(
      nome: "Omelete Japonesa", 
      preco: 32.15, 
      ingredientes: ['Peixe assado, Salada, Shake e Sake de salmão'], 
      foto: "lib/assets/omelete.gif"),
  ];


}