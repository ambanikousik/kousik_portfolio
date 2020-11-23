// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeatureProject _$_$_FeatureProjectFromJson(Map<String, dynamic> json) {
  return _$_FeatureProject(
    image: json['imagelink'] == null
        ? null
        : ImageLink.fromJson(json['imagelink'] as Map<String, dynamic>),
    title: json['title'] as String,
    details: json['details'] as String,
    techs: (json['techs'] as List)?.map((e) => e as String)?.toList(),
    gitLink: json['gitlink'] as String,
  );
}

Map<String, dynamic> _$_$_FeatureProjectToJson(_$_FeatureProject instance) =>
    <String, dynamic>{
      'imagelink': instance.image,
      'title': instance.title,
      'details': instance.details,
      'techs': instance.techs,
      'gitlink': instance.gitLink,
    };

_$_ImageLink _$_$_ImageLinkFromJson(Map<String, dynamic> json) {
  return _$_ImageLink(
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$_$_ImageLinkToJson(_$_ImageLink instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
