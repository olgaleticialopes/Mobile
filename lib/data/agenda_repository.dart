import 'package:demo/domain/agenda.dart';

List<Agenda> loadAgenda(){
  return <Agenda>[

    Agenda(
      nome: "Pyke",
      foto: "lib/assets/pyke.jpg",
      email: "pyke@gmail.com",
      data: "29-05-2001",
      idade: 22,
      telefone: "(16)998-3445",
    ),


    Agenda(
      nome: "Katarina",
      foto: "lib/assets/katarina.jpg",
      email: "noxuskatarina@gmail.com",
      data: "28-03-2000",
      idade: 23,
      telefone: "19-984651778",
    ),


    Agenda(
      nome: "Kayn",
      foto: "lib/assets/kayn.jpg",
      email: "kayn@gmail.com",
      data: "18-05-2003",
      idade: 20,
      telefone: "16-9984231464",
    ),


    Agenda(
      nome: "Vayne",
      foto: "lib/assets/vayne",
      email: "vayvay@gmail.com",
      data: "30-05-2000",
      idade: 50,
      telefone: "11-897214654",
    ),


  ];
}