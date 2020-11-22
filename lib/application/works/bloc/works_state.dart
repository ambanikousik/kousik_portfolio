part of 'works_bloc.dart';

@freezed
abstract class WorksState with _$WorksState {
  const factory WorksState({
    @required List<FeatureProject> projects,
    @required bool loading,
    @required String errorMsg,
  }) = _WorksState;
}
