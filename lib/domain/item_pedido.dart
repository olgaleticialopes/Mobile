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

  String get precoFormatado => formatMoney(preco);
  String get descontoFormatado => formatMoney(desconto);

  double get lucro => (preco / produto.preco) * 100;
}