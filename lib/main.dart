import 'package:flutter/material.dart';
class text extends StatelessWidget {
  const text({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    const style =  TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 255, 255, 255)
    );           
  
    return Scaffold(
      appBar: AppBar(
        title: const Text("Atividade - home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: const [
                Text("A chuva", style: style),
              ],
            ),
            Column(
              children: [ const Text("A chuva purifica o ar, mas também purifica a alma.", style: style),
              const Text("Alguns pressentem a chuva, outos contentam-se em molhar-se", style: style),
              const Text("A chuva me ensinou que há calmaria depois da tempestade", style: style),
              const Text("                     ♥                                 ", style: style),
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [Text("2H3"),
                Text("2023"),
                ],

              )
              ],
            ), 
          ],        
        ),
      ),      
    );
    
    
    
    
  }
}
class ultimo extends StatelessWidget {
  const ultimo({super.key});

  @override
  Widget build(BuildContext context) {
    const style =  TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 255, 255, 255)
    );           
    return Scaffold(
      body: Center(
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("2H3", style: style),
                  Text("2023", style: style,)
                ],
          ),
        ),
    );
  }
}
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "prova",
      theme: ThemeData(primarySwatch: Colors.blueGrey,
    brightness: Brightness.dark
    ),

    home: const Homepage(),);
  }
}


 void main()=> runApp(const Aplicacao());








