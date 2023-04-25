import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/domain/answer.dart';

class question {
  final String text;
  final answer a;
  final answer b;
  final answer c;
  final answer d;
  final answer e;

  question({
    required this.text,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.e,
  });

  bool iscorrect(String answer) {
    return [a,b,c,d,e].where((e) => e.text == answer). first.correct;
  }
}
