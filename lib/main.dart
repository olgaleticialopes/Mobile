import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final inputnum1controller = TextEditingController();
  final inputnum2controller = TextEditingController();
  final inputoperacaocontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: inputnum1controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Infore um numero',  
                ),),
              
                TextField(
                controller: inputoperacaocontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Informe a operação'
                ),
              ),

              TextField(
                controller: inputnum2controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Informe o outro numero',
                ),
              ),
              ElevatedButton(
                onPressed: (() {
                  double numero1 = double.parse(inputnum1controller.text) ;
                   double numero2 = double.parse(inputnum2controller.text) ;
                  var total = 0.0;
                  var operacao =inputoperacaocontroller.text;
                  if(operacao =="+"){
                    total = numero1+numero2;
                  }
                  else if(operacao =="-"){
                    total = numero1-numero2;
                  }
                   else if(operacao =="*"){
                    total = numero1*numero2;
                  }
                   else if(operacao =="/"){
                    total = numero1/numero2;
                  }
                  

                  
                var snackBar = SnackBar(
                    content: Text(
                      '${numero1} ${operacao} ${numero2} = ${total.toString()}'
                      ),
                  );
                  //final só pode receber valor uma vez
                  

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }),
                child: const Text("Calcular"),
              )
            ],
          ),
        ));
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'grenting',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const homepage(),
    );
  }
}

void main() => runApp(const Aplicacao());
//so posso usar esse tipo de função quando só tiver uma linha


