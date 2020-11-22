// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'feature_project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FeatureProjectTearOff {
  const _$FeatureProjectTearOff();

// ignore: unused_element
  _FeatureProject call(
      {@required String image,
      @required String title,
      @required String details,
      @required List<String> techs,
      @required String gitLink}) {
    return _FeatureProject(
      image: image,
      title: title,
      details: details,
      techs: techs,
      gitLink: gitLink,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FeatureProject = _$FeatureProjectTearOff();

/// @nodoc
mixin _$FeatureProject {
  String get image;
  String get title;
  String get details;
  List<String> get techs;
  String get gitLink;

  $FeatureProjectCopyWith<FeatureProject> get copyWith;
}

/// @nodoc
abstract class $FeatureProjectCopyWith<$Res> {
  factory $FeatureProjectCopyWith(
          FeatureProject value, $Res Function(FeatureProject) then) =
      _$FeatureProjectCopyWithImpl<$Res>;
  $Res call(
      {String image,
      String title,
      String details,
      List<String> techs,
      String gitLink});
}

/// @nodoc
class _$FeatureProjectCopyWithImpl<$Res>
    implements $FeatureProjectCopyWith<$Res> {
  _$FeatureProjectCopyWithImpl(this._value, this._then);

  final FeatureProject _value;
  // ignore: unused_field
  final $Res Function(FeatureProject) _then;

  @override
  $Res call({
    Object image = freezed,
    Object title = freezed,
    Object details = freezed,
    Object techs = freezed,
    Object gitLink = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed ? _value.image : image as String,
      title: title == freezed ? _value.title : title as String,
      details: details == freezed ? _value.details : details as String,
      techs: techs == freezed ? _value.techs : techs as List<String>,
      gitLink: gitLink == freezed ? _value.gitLink : gitLink as String,
    ));
  }
}

/// @nodoc
abstract class _$FeatureProjectCopyWith<$Res>
    implements $FeatureProjectCopyWith<$Res> {
  factory _$FeatureProjectCopyWith(
          _FeatureProject value, $Res Function(_FeatureProject) then) =
      __$FeatureProjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {String image,
      String title,
      String details,
      List<String> techs,
      String gitLink});
}

/// @nodoc
class __$FeatureProjectCopyWithImpl<$Res>
    extends _$FeatureProjectCopyWithImpl<$Res>
    implements _$FeatureProjectCopyWith<$Res> {
  __$FeatureProjectCopyWithImpl(
      _FeatureProject _value, $Res Function(_FeatureProject) _then)
      : super(_value, (v) => _then(v as _FeatureProject));

  @override
  _FeatureProject get _value => super._value as _FeatureProject;

  @override
  $Res call({
    Object image = freezed,
    Object title = freezed,
    Object details = freezed,
    Object techs = freezed,
    Object gitLink = freezed,
  }) {
    return _then(_FeatureProject(
      image: image == freezed ? _value.image : image as String,
      title: title == freezed ? _value.title : title as String,
      details: details == freezed ? _value.details : details as String,
      techs: techs == freezed ? _value.techs : techs as List<String>,
      gitLink: gitLink == freezed ? _value.gitLink : gitLink as String,
    ));
  }
}

/// @nodoc
class _$_FeatureProject implements _FeatureProject {
  const _$_FeatureProject(
      {@required this.image,
      @required this.title,
      @required this.details,
      @required this.techs,
      @required this.gitLink})
      : assert(image != null),
        assert(title != null),
        assert(details != null),
        assert(techs != null),
        assert(gitLink != null);

  @override
  final String image;
  @override
  final String title;
  @override
  final String details;
  @override
  final List<String> techs;
  @override
  final String gitLink;

  @override
  String toString() {
    return 'FeatureProject(image: $image, title: $title, details: $details, techs: $techs, gitLink: $gitLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeatureProject &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.techs, techs) ||
                const DeepCollectionEquality().equals(other.techs, techs)) &&
            (identical(other.gitLink, gitLink) ||
                const DeepCollectionEquality().equals(other.gitLink, gitLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(techs) ^
      const DeepCollectionEquality().hash(gitLink);

  @override
  _$FeatureProjectCopyWith<_FeatureProject> get copyWith =>
      __$FeatureProjectCopyWithImpl<_FeatureProject>(this, _$identity);
}

abstract class _FeatureProject implements FeatureProject {
  const factory _FeatureProject(
      {@required String image,
      @required String title,
      @required String details,
      @required List<String> techs,
      @required String gitLink}) = _$_FeatureProject;

  @override
  String get image;
  @override
  String get title;
  @override
  String get details;
  @override
  List<String> get techs;
  @override
  String get gitLink;
  @override
  _$FeatureProjectCopyWith<_FeatureProject> get copyWith;
}
