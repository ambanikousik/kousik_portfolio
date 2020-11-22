import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kousik_portfolio/application/experience/bloc/experience_bloc.dart';
import 'package:kousik_portfolio/presentation/pages/experience/experience_page.dart';
import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExperienceBloc>(
      create: (context) => ExperienceBloc()..add(const ExperienceEvent.load()),
      child: const ExperiencePage(),
    );
  }
}