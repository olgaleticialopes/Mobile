import 'package:demo/data/agenda_repository.dart';
import 'package:demo/domain/agenda.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
      final agenda = loadAgenda();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Agenda"),
      ),

      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),

        itemCount: agenda.length,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context,
               "/agenda",
               arguments: agenda[index]
              );
            },
            
            child: Padding(
              padding: const EdgeInsets.all(8),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(agenda[index].nome),
                ],
              ),
           ),

      ),
      ),

      

    );
  }
}