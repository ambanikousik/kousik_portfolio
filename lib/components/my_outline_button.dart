import 'package:flutter/material.dart';

import '../presentation/constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key key,
    this.imageSrc,
    this.text,
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final voidFunction press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlineButton(
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 2.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        borderSide: const BorderSide(color: Color(0xFFEDEDED)),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              height: 40,
            ),
            const SizedBox(width: kDefaultPadding),
            Text(text)
          ],
        ),
      ),
    );
  }
}
