import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/question_repository.dart';
import 'package:flutter_application_1/domain/question.dart';
import 'package:flutter_application_1/presentation/widgets/question_option_widget.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  late bool _visible;
  late List<Question> _questions;
  late Question _question;
  late int _position;
  late int _correctAnswers;

  @override
  void initState() {
    super.initState();

    _visible = true;
    _questions = loadQuestions();
    _position = 0;
    _question = _questions[_position];
    _correctAnswers = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Question 1'),
        ),
        body: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(_question.text),
                    )),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: _question.Answers()
                        .map((e) =>
                            QuestionOption(text: e.text, action: onAnswers))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void onAnswers(String text) {
    final correct = _question.isCorrect(text);
    final message = correct? "Acertou Mizeravi!" : "Errrroouu";
    if(correct){
      _correctAnswers++;

    }

    var snackBar = SnackBar(content: Text(message));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    setState(() {
      _visible = false;
    });
    final position = _position +1;
    if (position >= _questions.length) {
     Navigator.pushNamed(context, "/finish",
     arguments: "Voce acertou $_correctAnswers de ${_questions.length}!"
     );
          return;
        }

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _position = position;
       _question = _questions[_position];
        _visible = true;
      });
    });
  }
}
