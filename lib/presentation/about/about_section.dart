import 'package:flutter/material.dart';
import '../../components/default_button.dart';
import '../../components/my_outline_button.dart';
import '../../presentation/constants.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const AboutTextWithSign(),
              const Expanded(
                child: AboutSectionText(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                ),
              ),
              const ExperienceCard(numOfExp: "08"),
              const Expanded(
                child: AboutSectionText(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {},
              ),
              const SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
