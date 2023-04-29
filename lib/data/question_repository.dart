import 'package:flutter_application_1/domain/answer.dart';
import 'package:flutter_application_1/domain/question.dart';

List<Question> loadQuestions(){
  return<Question>[
    Question(
      text: "Qual a cor predominante do tubarão branco",
      a: Answer(text: "branco",correct: false),
        b: Answer(text: "Cinza",correct: true),
          c: Answer(text: "Preto",correct: false),
            d: Answer(text: "Azul",correct: false),
              e: Answer(text: "Rosa",correct: false),
    ),
    Question(
      text: "Qual a pessoa mais lindinha do mundo todo?",
      a: Answer(text: "leticia",correct: false),
        b: Answer(text: "leti",correct: true),
          c: Answer(text: "olga",correct: false),
            d: Answer(text: "lelet",correct: false),
              e: Answer(text: "mymy",correct: false),
    ),
    Question(
      text: "Qual o melhor personagem de south park",
      a: Answer(text: "eric cartman",correct: true),
        b: Answer(text: "Kenny McCormick",correct: false),
          c: Answer(text: "Stan Marsh",correct: false),
            d: Answer(text: "Chef",correct: false),
              e: Answer(text: "Wendy",correct: false),
    ),
  ];
}