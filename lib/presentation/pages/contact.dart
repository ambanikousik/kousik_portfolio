import 'package:flutter/material.dart';
import 'package:kousik_portfolio/presentation/method.dart';
import 'package:kousik_portfolio/presentation/widgets/custom_text.dart';
import 'package:kousik_portfolio/presentation/widgets/topbar.dart';

class Contact extends StatelessWidget {
  final Method method = Method();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: TopBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 100,
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
                        "Although I'm currently looking for SDE-1 opportunities, my inbox is \nalways open. Whether you have a question or just want to say hi, I'll try my \nbest to get back to you!",
                        textAlign: TextAlign.center,
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
                    child: Card(
                      elevation: 4.0,
                      color: const Color(0xff64FFDA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(0.85),
                        height: size.height * 0.09,
                        width: size.width * 0.10,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xff0A192F),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          child: Text(
                            "Say Hello",
                            style: TextStyle(
                              color: Color(0xff64FFDA),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
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
                "Designed & Built by Tushar Nikam 💙 Flutter",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.4),
                  letterSpacing: 1.75,
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
