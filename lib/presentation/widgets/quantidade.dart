import 'package:flutter/material.dart';

class Quantidade extends StatefulWidget {
  final void Function(int quantidade) onChangeQuantidade;
  final int min;
  final int max;
  const Quantidade({super.key, required this.onChangeQuantidade,required this.max, required this.min});
  @override
  State<Quantidade> createState() => _QuantidadeState();
}

class _QuantidadeState extends State<Quantidade> {
  int valor = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: decrementa, icon: const Icon(Icons.remove),),
          Container(
            decoration: BoxDecoration( border: Border.all(),),
            child: SizedBox(
              height: 30,
              width: 60,
              child:Center(child: Text(valor.toString()),) ),
          ),
          IconButton(onPressed: incrementa, icon: const Icon(Icons.add))
        ],
      ),
    );
  }


void incrementa(){
var quantidade = valor +1; 
if(quantidade > widget.max){

  final snackBar = SnackBar(content: Text("Não foi possível comprar mais que ${widget.max} produtos"),);
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
  return;
}
 setState(() {
    valor = quantidade;
    widget.onChangeQuantidade(valor);
  });
}

void decrementa(){
final quantidade = valor - 1;
if(quantidade < widget.min){
  const snackBar = SnackBar(content: Text("Não é possivel selecionar uma quantidade negativa"));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
   return;
}
setState(() {
  valor = quantidade; 
  widget.onChangeQuantidade(valor);
});

}
}