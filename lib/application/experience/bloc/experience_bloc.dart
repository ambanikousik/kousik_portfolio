import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kousik_portfolio/domain/i_portfolio_repository.dart';
import 'experience_state.dart';

part 'experience_event.dart';
part 'experience_bloc.freezed.dart';

class ExperienceBloc extends Bloc<ExperienceEvent, ExperienceState> {
  final IPortfolioRepository repository;

  ExperienceBloc({@required this.repository})
      : super(const ExperienceState(
            experiences: [], loading: false, errorMsg: ''));

  @override
  Stream<ExperienceState> mapEventToState(
    ExperienceEvent event,
  ) async* {
    yield* event.map(load: (e) async* {
      yield state.copyWith(loading: true);
      final experienceResponse = await repository.getExperienceList();
      yield experienceResponse.fold(
          (l) => state.copyWith(errorMsg: l.errorMsg, loading: false),
          (r) => state.copyWith(experiences: r, loading: false));
    });
  }
}
