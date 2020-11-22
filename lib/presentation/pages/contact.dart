import 'package:flutter/material.dart';
import 'package:kousik_portfolio/presentation/method.dart';
import 'package:kousik_portfolio/presentation/widgets/custom_text.dart';
import 'package:kousik_portfolio/presentation/widgets/topbar.dart';
import 'package:styled_widget/styled_widget.dart';

class Contact extends StatelessWidget {
  final Method method = Method();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: TopBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: constraints.maxWidth >= 1100 ? 100 : 20,
            ),
            child: ListView(
              children: [
                const SizedBox(
                  height: 92,
                ),
                SizedBox(
                  height: size.height * 0.68,
                  width: MediaQuery.of(context).size.width - 100,
                  // color: Colors.orange,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                        text: "0.4 What's Next?",
                        textsize: 16.0,
                        color: Color(0xff41FBDA),
                        letterSpacing: 3.0,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const CustomText(
                        text: "Get In Touch",
                        textsize: 42.0,
                        color: Colors.white,
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.w700,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Wrap(
                        children: [
                          Text(
                            "Although I'm currently looking for SDE-1 opportunities, my inbox is always open. Whether you have a question or just want to say hi, I'll try my best to get back to you!",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              letterSpacing: 0.75,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      InkWell(
                        onTap: () {
                          method.launchEmail();
                        },
                        child: const Text(
                          "Say Hello",
                          style: TextStyle(
                            color: Color(0xff64FFDA),
                          ),
                        ),
                      ).padding(all: 15).decorated(
                          border: Border.all(color: const Color(0xff64FFDA))),
                    ],
                  ),
                ),

                //Footer
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width - 100,
                  //color: Colors.white,
                  child: Text(
                    "Designed & Built by Kousik 💙 Flutter",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      letterSpacing: 1.75,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
