import 'package:flutter/material.dart';
import 'package:kousik_portfolio/presentation/widgets/custom_text.dart';
import 'package:kousik_portfolio/presentation/widgets/custom_title.dart';
import 'package:kousik_portfolio/presentation/widgets/topbar.dart';

class About extends StatelessWidget {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: const Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: TopBar(),
          body: Container(
            margin: EdgeInsets.symmetric(
                horizontal: constraints.maxWidth >= 1100 ? 100 : 20),
            child: ListView(
              children: [
                const CustomTitle(title: "01.", index: "About Me"),

                //About me desc
                Wrap(
                  children: const [
                    Text(
                      "Hello! I'm Kousik, a Freelancer living in Dhaka, BD.\n\nI enjoy learning new techs and creating things out of it. My goal is to always build products with ensuring maximum stability and optimisation.\n\n",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xff828DAA),
                        letterSpacing: 0.75,
                      ),
                    ),
                    Text(
                      "Shortly currently, I am purshuing my Bachlor's degree in Computter science and Engineering at Independent University of Bangladesh, as well as doing freelancing where I work on a wide variety of interesting and meaningful projects on a daily basis.\n\n",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xff828DAA),
                        letterSpacing: 0.75,
                      ),
                    ),
                    CustomText(
                      text:
                          "Here are a few technologies I've been working with recently:\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      // fontWeight: FontWeight.w500,
                      letterSpacing: 0.75,
                    ),
                  ],
                ),

                if (constraints.maxWidth >= 1100)
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.20,
                        child: Column(
                          children: [
                            technology(context, "Dart"),
                            technology(context, "Flutter"),
                            technology(context, "Domain Driven Design"),
                            technology(context, "Firebase"),
                            technology(context, "UI/UX (Adobe Xd)"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.20,
                        child: Column(
                          children: [
                            technology(context, "Graphql and Rest Api"),
                            technology(context, "Adobe Illustrator"),
                            technology(context, "C# (Unity 3D)"),
                            technology(context, "Javascript (Cocos 2D)"),
                          ],
                        ),
                      )
                    ],
                  )
                else
                  Column(
                    children: [
                      technology(context, "Dart"),
                      technology(context, "Flutter"),
                      technology(context, "Domain Driven Design"),
                      technology(context, "Firebase"),
                      technology(context, "UI/UX (Adobe Xd)"),
                      technology(context, "Graphql and Rest Api"),
                      technology(context, "Adobe Illustrator"),
                      technology(context, "C# (Unity 3D)"),
                      technology(context, "Javascript (Cocos 2D)"),
                    ],
                  )
              ],
            ),
          ),
        );
      },
    );
  }
}
