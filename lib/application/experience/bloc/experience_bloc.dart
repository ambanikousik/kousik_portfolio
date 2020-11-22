import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kousik_portfolio/domain/experience.dart';
// import 'package:kousik_portfolio/domain/experience.dart';
import 'experience_state.dart';

part 'experience_event.dart';
part 'experience_bloc.freezed.dart';

class ExperienceBloc extends Bloc<ExperienceEvent, ExperienceState> {
  ExperienceBloc()
      : super(const ExperienceState(
            experiences: [], loading: false, errorMsg: ''));

  @override
  Stream<ExperienceState> mapEventToState(
    ExperienceEvent event,
  ) async* {
    yield* event.map(load: (e) async* {
      final List<Experience> experiences = [
        const Experience(
            title: "Sandip Institute Of Engineering & Management Nashik",
            description:
                "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat Savitribai Phule Pune University",
            timeline: "2016 - Present "),
        const Experience(
            title: "Sandip Institute Of Engineering & Management Nashik",
            description:
                "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat Savitribai Phule Pune University",
            timeline: "2016 - Present "),
        const Experience(
            title: "Sandip Institute Of Engineering & Management Nashik",
            description:
                "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat Savitribai Phule Pune University",
            timeline: "2016 - Present "),
        const Experience(
            title: "Sandip Institute Of Engineering & Management Nashik",
            description:
                "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat Savitribai Phule Pune University",
            timeline: "2016 - Present "),
        const Experience(
            title: "Sandip Institute Of Engineering & Management Nashik",
            description:
                "I am currently pursuing Bachelor's Degree in Computer Science and Engineering \nat Savitribai Phule Pune University",
            timeline: "2016 - Present "),
      ];
      yield state.copyWith(experiences: experiences);
    });
  }
}
