import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'custom_text.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final String index;

  const CustomTitle({Key key, @required this.title, @required this.index})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 1100) {
          return Row(
            children: [
              CustomText(
                text: index,
                textsize: 20.0,
                color: const Color(0xff61F9D5),
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                width: 12.0,
              ),
              CustomText(
                text: title,
                textsize: 26.0,
                color: const Color(0xffCCD6F6),
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                width: 26.0,
              ),
              Container(
                width: size.width / 4,
                height: 0.75,
                color: const Color(0xff303C55),
              ),
            ],
          ).padding(
            top: 92,
            bottom: size.height * 0.07,
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: index,
                textsize: 20.0,
                color: const Color(0xff61F9D5),
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                width: 12.0,
              ),
              CustomText(
                text: title,
                textsize: 26.0,
                color: const Color(0xffCCD6F6),
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                width: 26.0,
              ),
              Container(
                width: size.width / 4,
                height: 0.75,
                color: const Color(0xff303C55),
              ),
            ],
          ).padding(
            top: 92,
            bottom: size.height * 0.07,
          );
        }
      },
    );
  }
}
