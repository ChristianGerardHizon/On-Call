import 'package:flutter/material.dart';

class LetterAvatar extends StatelessWidget {
  final String text;
  final double? radius;
  final TextStyle? textStyle;

  const LetterAvatar(
      {super.key, required this.text, this.radius, this.textStyle});

  @override
  Widget build(BuildContext context) {
    String firstLetter = text.isNotEmpty ? text[0] : '?';

    return CircleAvatar(
      radius: radius,
      backgroundColor: Theme.of(context)
          .primaryColor, // You can customize the background color
      child: Text(
        firstLetter,
        style: textStyle, // You can customize the text style
      ),
    );
  }
}
