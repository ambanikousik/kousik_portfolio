import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kousik_portfolio/application/experience/bloc/experience_bloc.dart';
import 'package:kousik_portfolio/application/experience/bloc/experience_state.dart';
import 'package:kousik_portfolio/presentation/widgets/custom_timeline.dart';
import 'package:flutter/material.dart';
import 'package:kousik_portfolio/presentation/widgets/topbar.dart';
import '../../widgets/custom_title.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExperienceBloc, ExperienceState>(
        builder: (context, state) {
      final List<Widget> _widgets = [
        const CustomTitle(
          index: "02.",
          title: "Where I've Worked",
        ),
        ...List<CustomTimeLine>.from(state.experiences
            .asMap()
            .map((key, value) => MapEntry(
                key,
                CustomTimeLine(
                  experience: value,
                  isFirst: key == 0,
                )))
            .values
            .toList())
      ];

      return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
            appBar: TopBar(),
            body: Container(
              margin: EdgeInsets.symmetric(
                horizontal: constraints.maxWidth >= 1100 ? 100 : 20,
              ),
              child: ListView.builder(
                itemCount: _widgets.length,
                itemBuilder: (context, index) => _widgets[index],
              ),
            ),
          );
        },
      );
    });
  }
}
