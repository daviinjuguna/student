import 'package:flutter/material.dart';
import 'package:student/core/util/constant.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  final Color color;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don’t have an account? " : "Already have an account? ",
          style: TextStyle(color: kBlackColor),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.05,
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Register" : "Login",
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
