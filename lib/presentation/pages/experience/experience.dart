import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kousik_portfolio/application/experience/bloc/experience_bloc.dart';
import 'package:kousik_portfolio/infrastructure/portfolio_repository.dart';
import 'package:kousik_portfolio/presentation/pages/experience/experience_page.dart';
import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExperienceBloc>(
      create: (context) => ExperienceBloc(
        repository: context.read<PortfolioRepository>(),
      )..add(const ExperienceEvent.load()),
      // ignore: prefer_const_constructors
      child: ExperiencePage(),
    );
  }
}
