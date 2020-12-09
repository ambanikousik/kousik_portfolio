import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kousik_portfolio/domain/feature_project.dart';
import 'package:kousik_portfolio/presentation/widgets/custom_text.dart';
import 'package:kousik_portfolio/presentation/widgets/topbar.dart';
import 'package:styled_widget/styled_widget.dart';
import '../../method.dart';

class ProjectDetailsPage extends StatelessWidget {
  final FeatureProject featureProject;
  final Method method = Method();

  ProjectDetailsPage({
    @required this.featureProject,
  });

  List<Widget> techsList() {
    final List<Widget> _techsList = [];
    for (final String tech in featureProject.techs) {
      _techsList.addAll([
        CustomText(
          text: "#$tech",
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
    return Scaffold(
      appBar: TopBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          constraints: const BoxConstraints(maxWidth: 700),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: featureProject.title,
                textsize: 27,
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.75,
              ).padding(right: 20),
              Image(
                fit: BoxFit.contain,
                image: NetworkImage(featureProject.image.url),
              ).padding(vertical: 20),
              Container(
                alignment: Alignment.center,
                color: const Color(0xff172A45),
                child: CustomText(
                  text: featureProject.details,
                  textsize: 16.0,
                  longText: true,
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
          ),
        ),
      ),
    );
  }
}
