import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:providers/domain/item_pedido.dart';
import 'package:providers/domain/produto.dart';
import 'package:providers/util/format.dart';

class Carrinho  extends ChangeNotifier{
  final  List<ItemPedido> _itens = [];

  void addItem(Produto produto, int quantiade) {
    if (_jaTemProduto(produto)) {
      final position = _itens.indexWhere(FindItemByProduto(produto));
      final item = _itens[position];
      _itens[position] = item.changeQuantity(item.quantidade + quantiade);


notifyListeners();
      return;
    }


notifyListeners();
    _itens.add(ItemPedido(
      produto: produto,
      desconto: 0,
      preco: produto.preco,
      quantidade: quantiade,
    ));
  }

  bool _jaTemProduto(Produto produto) {
    return _itens.where(FindItemByProduto(produto)).isNotEmpty;
  }

  bool Function(ItemPedido item) FindItemByProduto(Produto produto) {
    return (item) => item.produto.id == produto.id;
  }

 List<ItemPedido>  get itens => _itens;
 double get total => itens.map((Element) => Element.total).reduce((value, element) => value + element);

 String get totalFormatado => formatMoney(total);
 int get count => itens.length;
}
