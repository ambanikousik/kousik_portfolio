import 'package:freezed_annotation/freezed_annotation.dart';
part 'feature_project.freezed.dart';
part 'feature_project.g.dart';

@freezed
abstract class FeatureProject with _$FeatureProject {
  const factory FeatureProject(
      {@JsonKey(name: 'imagelink') @required ImageLink image,
      @required String title,
      @required String details,
      @required List<String> techs,
      @JsonKey(name: 'gitlink') @required String gitLink}) = _FeatureProject;

  @JsonSerializable(explicitToJson: true)
  factory FeatureProject.fromJson(Map<String, dynamic> json) =>
      _$FeatureProjectFromJson(json);
}

@freezed
abstract class ImageLink with _$ImageLink {
  const factory ImageLink({@required String url}) = _ImageLink;
  factory ImageLink.fromJson(Map<String, dynamic> json) =>
      _$ImageLinkFromJson(json);
}
