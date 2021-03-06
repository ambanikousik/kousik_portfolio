import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double textsize;
  final Color color;
  final double letterSpacing;
  final bool longText;
  final FontWeight fontWeight;
  const CustomText(
      {@required this.text,
      this.longText = false,
      @required this.textsize,
      @required this.color,
      this.letterSpacing,
      this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: longText ? 100 : 4,
      // textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontSize: textsize,
          letterSpacing: letterSpacing ?? 0.10,
          fontWeight: fontWeight ?? FontWeight.w400),
    );
  }
}
