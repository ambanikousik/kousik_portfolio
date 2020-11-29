import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kousik_portfolio/application/works/bloc/works_bloc.dart';
import 'package:kousik_portfolio/infrastructure/portfolio_repository.dart';
import 'package:kousik_portfolio/presentation/pages/works/works_page.dart';

class Works extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WorksBloc>(
      create: (context) => WorksBloc(
        repository: context.read<PortfolioRepository>(),
      )..add(const WorksEvent.load()),
      // ignore: prefer_const_constructors
      child: WorksPage(),
    );
  }
}
