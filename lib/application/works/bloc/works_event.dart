part of 'works_bloc.dart';

@freezed
abstract class WorksEvent with _$WorksEvent {
  const factory WorksEvent.load() = _Load;
}
