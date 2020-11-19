import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color dotsColor;
  final Color buttonColor;
  final VoidCallback onPress;
  const CustomButton(
      {@required this.text,
      @required this.onPress,
      this.dotsColor,
      this.buttonColor});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FDottedLine(
            color: dotsColor ?? Colors.white,
            strokeWidth: 2.0,
            dottedLength: 8.0,
            corner: FDottedLineCorner.all(6.0),
            child: Text(text)
                .padding(vertical: 5, horizontal: 10)
                .gestures(onTap: onPress)
                .decorated(color: buttonColor))
        .padding(horizontal: 10);
  }
}
