import 'package:providers/util/format.dart';

class Produto {
  final int id;
  final String nome;
  final String descricao;
  final double preco;
  final int estoque;

  Produto({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.estoque,
  });

  String get precoFormatado => formatMoney(preco);
}