import 'package:demo/domain/agenda.dart';
import 'package:flutter/material.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {



    final agenda = ModalRoute.of(context)!.settings.arguments as Agenda;
    return Scaffold(
      appBar: AppBar(
        title: Text(agenda.nome),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8),

        child: Column(
          children: [
            Center(
              child: Image.network(agenda.foto),
            ),

            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                children: [
                  Text(agenda.nome),
                ],
              ),
            ),


           Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                children: [
                  Text(agenda.email),
                ],
              ),
            ),


           Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                children: [
                  Text(agenda.data),
                ],
              ),
            ),

        //container idade
           Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                children: [
                  Text(agenda.idade.toString()),
                ],
              ),
            ),

          //container telefone
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                children: [
                  Text(agenda.telefone),
                ],
              ),
            ),


          ],
        ),
      ),

    );
  }
}