import 'package:providers/domain/item_pedido.dart';
import 'package:providers/util/format.dart';

class Pedido {
  final int idCliente;
  final DateTime data;
  final List<ItemPedido> itens;

  Pedido({
    required this.idCliente,
    required this.data,
    required this.itens
  });

  double get total => itens.map((e) => e.preco)
                           .reduce((value, element) => value + element);
  
  String get totalFormatado => formatMoney(total);
  String get dataFormatada => formatDate(data);

  void addItem(ItemPedido item) => itens.add(item);

  void removeItem(ItemPedido item) => 
    itens.removeWhere((element) => element == item);
}