import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kousik_portfolio/domain/experience.dart';

part 'experience_state.freezed.dart';

@freezed
abstract class ExperienceState with _$ExperienceState {
  const factory ExperienceState(
      {@required List<Experience> experiences,
      @required bool loading,
      @required String errorMsg}) = _ExperienceState;
}
