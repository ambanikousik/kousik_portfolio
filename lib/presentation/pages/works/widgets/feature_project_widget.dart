import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kousik_portfolio/domain/feature_project.dart';
import 'package:kousik_portfolio/presentation/pages/project_details/project_details_page.dart'
    deferred as projectdetails;
import 'package:styled_widget/styled_widget.dart';
import '../../../method.dart';
import '../../../widgets/custom_text.dart';

// import 'projec';
class FeatureProjectWidget extends StatelessWidget {
  final FeatureProject featureProject;
  final Method method = Method();

  FeatureProjectWidget({
    @required this.featureProject,
  });
  List<Widget> techsList() {
    final List<Widget> _techsList = [];
    for (final String tech in featureProject.techs) {
      _techsList.addAll([
        CustomText(
          text: tech,
          textsize: 14,
          color: Colors.grey,
          letterSpacing: 1.75,
        ),
        const SizedBox(
          width: 16.0,
        ),
      ]);
    }
    return _techsList;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () async {
        await projectdetails.loadLibrary();
        Navigator.push(
          context,
          // ignore: prefer_const_constructors
          MaterialPageRoute(
              builder: (context) => projectdetails.ProjectDetailsPage(
                    featureProject: featureProject,
                  )),
        );
      },
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth >= 1100) {
            return SizedBox(
              height: size.height - 100,
              // width: size.width - 84,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image(
                    width: size.width / 2,
                    fit: BoxFit.contain,
                    image: NetworkImage(featureProject.image.url),
                  ).padding(
                    right: 20,
                    vertical: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CustomText(
                          text: featureProject.title,
                          textsize: 27,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ).padding(bottom: 20),
                        Container(
                          alignment: Alignment.center,
                          color: const Color(0xff172A45),
                          child: CustomText(
                            text: featureProject.details,
                            textsize: 16.0,
                            color: Colors.white.withOpacity(0.4),
                            letterSpacing: 0.75,
                          ).padding(bottom: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: techsList(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: const FaIcon(FontAwesomeIcons.link),
                              color: Colors.white.withOpacity(0.3),
                              onPressed: () =>
                                  method.launchURL(featureProject.gitLink),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ).padding(vertical: 40),
            );
          } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomText(
                  text: featureProject.title,
                  textsize: 27,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.75,
                ).padding(right: 20),
                Image(
                  // height: size.height * .5,
                  fit: BoxFit.contain,
                  image: NetworkImage(featureProject.image.url),
                ).padding(vertical: 20),
                Container(
                  alignment: Alignment.center,
                  color: const Color(0xff172A45),
                  child: CustomText(
                    text: featureProject.details,
                    textsize: 16.0,
                    color: Colors.white.withOpacity(0.4),
                    letterSpacing: 0.75,
                  ).padding(horizontal: 20, vertical: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: techsList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.link),
                      color: Colors.white.withOpacity(0.3),
                      onPressed: () => method.launchURL(featureProject.gitLink),
                    ),
                  ],
                ),
              ],
            ).padding(vertical: 40);
          }
        },
      ),
    );
  }
}
