 import 'package:providers/domain/produto.dart';
 typedef ProductFilter = bool Function (Produto produto);

ProductFilter matchTemEstoque() {
    return (produto) => produto.estoque > 0;
  }

ProductFilter matchNomeOrDescricao(String texto) {
    return (produto) =>  produto.nome.contains(texto) || produto.descricao.contains(texto);
  
  }
  ProductFilter matchPorId(int id){
    return (produto) => produto.id == id;
  }