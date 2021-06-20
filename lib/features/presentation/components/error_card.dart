import 'package:flutter/material.dart';
import 'package:student/core/util/constant.dart';

class ErrorCard extends StatelessWidget {
  const ErrorCard({
    Key? key,
    required VoidCallback retry,
  })  : _retry = retry,
        super(key: key);
  final VoidCallback _retry;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Oh Snap",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Something went wrong, Please try agait",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          MaterialButton(
            onPressed: _retry,
            color: kYellowColor,
            textColor: Colors.white,
            child: Text("RETRY"),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
