import 'package:providers/domain/produto.dart';
import 'package:providers/util/format.dart';

class ItemPedido {
  final Produto produto;
  final double desconto;
  final double preco;
  final int quantidade;

  ItemPedido({
    required this.produto,
    required this.desconto,
    required this.preco,
    required this.quantidade
  });

  String get totalFormatado => formatMoney(total);
  String get precoFormatado => formatMoney(preco);
  String get descontoFormatado => formatMoney(desconto);


  double get total => preco * quantidade;
  double get lucro => (preco / produto.preco) * 100;

  ItemPedido changeQuantity(int amount){
   return ItemPedido(
    produto: produto,
     desconto: desconto, 
     preco: preco,
      quantidade: quantidade
      );
  }
}