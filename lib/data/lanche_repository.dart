
import 'package:flutter_application_1/domain/lanche.dart';

List<Lanche> loadLanches() {
  return <Lanche>[
    Lanche(
      nome: "Japan Combo", 
      preco: 14.90, 
      ingredientes: ['Niguiri, omelete japonesa e sopa'], 
      foto: "https://i.pinimg.com/originals/15/29/0a/15290a2b4067e5c9c7888e1bf1f3c4da.gif"
    ),
    Lanche(
      nome: "Bentô", 
      preco: 18.90, 
      ingredientes: ['Niguiri, omelete, carne assada, bacon'], 
      foto: "https://i.gifer.com/S5dt.gif"
    ),
    Lanche(
      nome: "Japan combo II", 
      preco: 15.70, 
      ingredientes: ['Cachorro quente japones, bento com itens fritos e saladas'], 
      foto: "https://thumbs.gfycat.com/CloseBlindChimneyswift-max-1mb.gif",
    ),
    Lanche(
      nome: "Combo sushi", 
      preco: 20.12, 
      ingredientes: ['Combo de 8 peças'], 
      foto: "https://animesher.com/orig/1/196/1969/19698/animesher.com_kawaii-sushi-gif-1969880.gif"
    ),
    Lanche(
      nome: "Combo jantar peixes", 
      preco: 32.15, 
      ingredientes: ['Peixe assado, Salada, Shake e Sake de salmão'], 
      foto: "https://i.pinimg.com/736x/e0/38/d4/e038d4eb11a5e89636687576fbf352a4.jpg"),
    Lanche(
      nome: "Sobremesa doce", 
      preco: 32.15, 
      ingredientes: ['Massa crocante com recheio de sorvete de baunilha e cobertua a sua escolha.'], 
      foto: "https://i.pinimg.com/736x/e0/38/d4/e038d4eb11a5e89636687576fbf352a4.jpg"),
    Lanche(
      nome: "Combo jantar peixes", 
      preco: 32.15, 
      ingredientes: ['Peixe assado, Salada, Shake e Sake de salmão'], 
      foto: "https://i.pinimg.com/736x/e0/38/d4/e038d4eb11a5e89636687576fbf352a4.jpg"),
  ];


}