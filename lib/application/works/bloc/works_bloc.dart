import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kousik_portfolio/domain/feature_project.dart';
import 'package:kousik_portfolio/domain/i_portfolio_repository.dart';

part 'works_event.dart';
part 'works_state.dart';
part 'works_bloc.freezed.dart';

class WorksBloc extends Bloc<WorksEvent, WorksState> {
  final IPortfolioRepository repository;

  WorksBloc({@required this.repository})
      : super(const WorksState(projects: [], loading: false, errorMsg: ''));

  @override
  Stream<WorksState> mapEventToState(
    WorksEvent event,
  ) async* {
    yield* event.when(load: () async* {
      yield state.copyWith(loading: true);
      final portfolioResponse = await repository.getProjectsList();
      yield portfolioResponse.fold(
          (l) => state.copyWith(errorMsg: l.errorMsg, loading: false),
          (r) => state.copyWith(projects: r, loading: false));
    });
  }
}
