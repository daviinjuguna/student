import 'package:flutter/material.dart';
import 'package:student/core/util/constant.dart';

class ChoiceCard extends StatelessWidget {
  final VoidCallback press;
  final String name;

  const ChoiceCard({
    Key? key,
    required this.press,
    required this.name,
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
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                // color: getTheRightColor() == kGrayColor
                //     ? Colors.transparent
                //     : getTheRightColor(),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: kBlackColor),
              ),
              // child: getTheRightColor() == kGrayColor
              //     ? null
              //     : Icon(getTheRightIcon(), size: 16),
            )
          ],
        ),
      ),
    );
  }
}
