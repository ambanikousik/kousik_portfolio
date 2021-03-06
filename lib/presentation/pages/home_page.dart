import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kousik_portfolio/presentation/method.dart';
import 'package:kousik_portfolio/presentation/widgets/custom_text.dart';
import 'package:styled_widget/styled_widget.dart';
import '../widgets/topbar.dart';

class HomePage extends StatelessWidget {
  final Method method = Method();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: TopBar(),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Row(
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
                          onPressed: () async {
                            method.launchURL("https://github.com/ambanikousik");
                          }),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.linkedin),
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: const Color(0xffffA8B2D1),
                        onPressed: () {
                          method.launchURL(
                              "https://www.linkedin.com/in/ri-kousik-b5890698/");
                        },
                        iconSize: 16.0,
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.facebook),
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: const Color(0xffffA8B2D1),
                        onPressed: () {
                          method.launchURL(
                              "https://www.facebook.com/ambanikousik");
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
                      if (constraints.maxWidth < 1100)
                        Image(
                          // height: size.width * 0.2,
                          width: size.width * 0.5,
                          fit: BoxFit.cover,
                          image: const NetworkImage(
                              "https://cdn.apito.io/media/159317102/medium/YX30P9Z0GO_hvk.jpg"),
                        ).padding(all: 10).decorated(
                            border: Border.all(color: const Color(0xff64FFDA))),
                      const SizedBox(
                        height: 20,
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
                        text: "I build things for the Mobile, PC and web.",
                        textsize: 56.0,
                        color: const Color(0xffCCD6F6).withOpacity(0.6),
                        fontWeight: FontWeight.w700,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Wrap(children: const [
                        Text(
                          "I'm a freelancer Flutter Developer currently living in Dhaka, I'm passionate about building exceptional websites, applications,games and everything in between.",
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
                        onPressed: () {
                          method.launchURL(
                              "https://www.upwork.com/o/profiles/users/~012e81ac8e539be6a0/?s=996364627857502209");
                        },
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
                if (constraints.maxWidth >= 1100)
                  Image(
                    // height: size.width * 0.2,
                    width: size.width * 0.2,
                    fit: BoxFit.cover,
                    image: const NetworkImage(
                        "https://cdn.apito.io/media/159317102/medium/YX30P9Z0GO_hvk.jpg"),
                  ).padding(all: 10).decorated(
                      border: Border.all(color: const Color(0xff64FFDA))),
                SizedBox(
                  width: size.width * 0.07,
                  height: size.height - 82,
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
            );
          },
        ),
      ),
    );
  }
}
