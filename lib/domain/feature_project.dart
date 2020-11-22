import 'package:freezed_annotation/freezed_annotation.dart';
part 'feature_project.freezed.dart';

@freezed
abstract class FeatureProject with _$FeatureProject {
  const factory FeatureProject(
      {@required String image,
      @required String title,
      @required String details,
      @required List<String> techs,
      @required String gitLink}) = _FeatureProject;
}
