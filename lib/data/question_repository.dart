import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/domain/answer.dart';
import 'package:flutter_application_1/domain/question.dart';

List<question> loadQuestions(){
  return<question>[
    question(
      text: "Qual a cor predominante do tubarão branco",
      a: answer(text: "branco",correct: false),
        b: answer(text: "Cinza",correct: true),
          c: answer(text: "Preto",correct: false),
            d: answer(text: "Azul",correct: false),
              e: answer(text: "Rosa",correct: false),
    ),
    question(
      text: "Qual a pessoa mais lindinha do mundo todo?",
      a: answer(text: "leticia",correct: false),
        b: answer(text: "leti",correct: true),
          c: answer(text: "olga",correct: false),
            d: answer(text: "lelet",correct: false),
              e: answer(text: "mymy",correct: false),
    ),
    question(
      text: "Qual o melhor personagem de south park",
      a: answer(text: "eric cartman",correct: false),
        b: answer(text: "Kenny McCormick",correct: true),
          c: answer(text: "Stan Marsh",correct: false),
            d: answer(text: "Chef",correct: false),
              e: answer(text: "Wendy",correct: false),
    ),
  ];
}