import 'package:flutter/material.dart';
import 'package:student/core/util/constant.dart';
import 'package:student/domain/entities/question.dart';
import 'package:student/presentation/pages/assignment/widgets/choice.dart';

class QuestionCard extends StatelessWidget {
  final Question _question;
  const QuestionCard({Key? key, required Question question})
      : _question = question,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "${_question.question}",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: kBlackColor, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5,
          ),
          ListView.builder(
            itemCount: _question.choices.size,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => ChoiceCard(
              press: () {},
              name: _question.choices[index].title,
            ),
          )
        ],
      ),
    );
  }
}
