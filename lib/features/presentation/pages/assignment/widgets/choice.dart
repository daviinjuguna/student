import 'package:flutter/material.dart';
import 'package:student/core/util/constant.dart';

class ChoiceCard extends StatelessWidget {
  final VoidCallback press;
  final String name;
  final bool correct;
  final bool selected;
  final bool currentSelected;

  const ChoiceCard({
    Key? key,
    required this.press,
    required this.name,
    required this.correct,
    required this.selected,
    required this.currentSelected,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "$name",
                style: TextStyle(color: kBlackColor, fontSize: 16),
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 150),
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                color: selected || currentSelected ? kYellowColor : null,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: correct
                      ? Colors.green
                      : correct != selected
                          ? Colors.red
                          : kBlackColor,
                  width: correct || correct != selected ? 4 : 1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
