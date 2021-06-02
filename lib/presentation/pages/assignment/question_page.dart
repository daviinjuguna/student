import 'package:flutter/material.dart';
import 'package:student/domain/entities/question.dart';

class StudentQuestionPage extends StatelessWidget {
  final Question _question;

  const StudentQuestionPage({Key? key, required Question question})
      : _question = question,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
