part of 'experience_bloc.dart';

@freezed
abstract class ExperienceEvent with _$ExperienceEvent {
  const factory ExperienceEvent.load() = _Load;
}
