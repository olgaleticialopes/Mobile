import 'package:providers/domain/produto.dart';
import 'package:providers/util/catalogo_util.dart';

class Catalogo {
  final List<Produto> itens;

  Catalogo({
    required this.itens
  });

  List<Produto> filter(String texto) {
    return withEstoque().where(matchNomeOrDescricao(texto)).toList();    

  }

  List<Produto> withEstoque() {
    return itens.where(matchTemEstoque()).toList();
  }
}