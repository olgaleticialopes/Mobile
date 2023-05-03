import 'package:flutter/material.dart';

class QuestionOption extends StatelessWidget {
  final String text;
  final Function(String) action;

  const QuestionOption({
    super.key,
    required this.text,
    required this.action});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox( 
        width: double.maxFinite,
        child: ElevatedButton(
          onPressed: ()=> action(text),
        child: Align(
          alignment: Alignment.centerLeft,
        child: Text(text),
        ),
      ),
      ),


    );
  }
}