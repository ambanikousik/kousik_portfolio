import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kousik_portfolio/presentation/method.dart';
import 'package:kousik_portfolio/presentation/widgets/custom_text.dart';
// import 'package:styled_widget/styled_widget.dart';
import '../widgets/topbar.dart';

class HomePage extends StatelessWidget {
  final Method method = Method();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: TopBar(),
      body: SingleChildScrollView(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width * 0.09,
              height: size.height - 82,
              // color: Colors.pinkAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.github),
                      // ignore: use_full_hex_values_for_flutter_colors
                      color: const Color(0xffffa8b2d1),
                      iconSize: 16.0,
                      onPressed: () {
                        method.launchURL("https://github.com/champ96k");
                      }),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.twitter),
                      // ignore: use_full_hex_values_for_flutter_colors
                      color: const Color(0xffffa8b2d1),
                      iconSize: 16.0,
                      onPressed: () {
                        method.launchURL("https://twitter.com/champ_96k");
                      }),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                    // ignore: use_full_hex_values_for_flutter_colors
                    color: const Color(0xffffA8B2D1),
                    onPressed: () {
                      method.launchURL(
                          "https://www.linkedin.com/in/tushar-nikam-a29a97131/");
                    },
                    iconSize: 16.0,
                  ),
                  IconButton(
                      icon: const Icon(Icons.call),
                      // ignore: use_full_hex_values_for_flutter_colors
                      color: const Color(0xffffA8B2D1),
                      iconSize: 16.0,
                      onPressed: () {
                        method.launchCaller();
                      }),
                  IconButton(
                      icon: const Icon(Icons.mail),
                      // ignore: use_full_hex_values_for_flutter_colors
                      color: const Color(0xffffA8B2D1),
                      iconSize: 16.0,
                      onPressed: () {
                        method.launchEmail();
                      }),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      height: 100,
                      width: 2,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // shrinkWrap: true,
                children: [
                  const SizedBox(
                    height: 92.0,
                  ),
                  const CustomText(
                    text: "Hi, my name is",
                    textsize: 16.0,
                    color: Color(0xff41FBDA),
                    letterSpacing: 3.0,
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  const CustomText(
                    text: "Rezaul Islam Kousik.",
                    textsize: 68.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w900,
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  CustomText(
                    text: "I build things for the Android and web.",
                    textsize: 56.0,
                    color: const Color(0xffCCD6F6).withOpacity(0.6),
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Wrap(children: const [
                    Text(
                      "I'm a freelancer based in Nashik, IN specializing in \nbuilding (and occasionally designing) exceptional websites, \napplications, and everything in between.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        letterSpacing: 2.75,
                        wordSpacing: 0.75,
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 16.0,
                  ),
                  OutlineButton(
                    onPressed: () {},
                    borderSide: const BorderSide(color: Color(0xff64FFDA)),
                    child: const Text(
                      "Hire Me",
                      style: TextStyle(
                        color: Color(0xff64FFDA),
                        letterSpacing: 2.75,
                        wordSpacing: 1.0,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.07,
              height: MediaQuery.of(context).size.height - 82,
              //color: Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RotatedBox(
                    quarterTurns: 45,
                    child: Text(
                      "rikousik@gmail.com",
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.6),
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      height: 100,
                      width: 2,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
