import 'package:flutter/material.dart';

class ConfirmDialogue extends StatelessWidget {
  final String text;

  const ConfirmDialogue({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(text),
      content: Text("Are you sure you want to $text?"),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(null),
          child: Text("CANCEL"),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text("OK"),
        ),
      ],
    );
  }
}
