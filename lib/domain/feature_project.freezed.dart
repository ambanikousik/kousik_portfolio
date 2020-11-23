// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'feature_project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FeatureProject _$FeatureProjectFromJson(Map<String, dynamic> json) {
  return _FeatureProject.fromJson(json);
}

/// @nodoc
class _$FeatureProjectTearOff {
  const _$FeatureProjectTearOff();

// ignore: unused_element
  _FeatureProject call(
      {@required @JsonKey(name: 'imagelink') ImageLink image,
      @required String title,
      @required String details,
      @required List<String> techs,
      @required @JsonKey(name: 'gitlink') String gitLink}) {
    return _FeatureProject(
      image: image,
      title: title,
      details: details,
      techs: techs,
      gitLink: gitLink,
    );
  }

// ignore: unused_element
  FeatureProject fromJson(Map<String, Object> json) {
    return FeatureProject.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FeatureProject = _$FeatureProjectTearOff();

/// @nodoc
mixin _$FeatureProject {
  @JsonKey(name: 'imagelink')
  ImageLink get image;
  String get title;
  String get details;
  List<String> get techs;
  @JsonKey(name: 'gitlink')
  String get gitLink;

  Map<String, dynamic> toJson();
  $FeatureProjectCopyWith<FeatureProject> get copyWith;
}

/// @nodoc
abstract class $FeatureProjectCopyWith<$Res> {
  factory $FeatureProjectCopyWith(
          FeatureProject value, $Res Function(FeatureProject) then) =
      _$FeatureProjectCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'imagelink') ImageLink image,
      String title,
      String details,
      List<String> techs,
      @JsonKey(name: 'gitlink') String gitLink});

  $ImageLinkCopyWith<$Res> get image;
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
      image: image == freezed ? _value.image : image as ImageLink,
      title: title == freezed ? _value.title : title as String,
      details: details == freezed ? _value.details : details as String,
      techs: techs == freezed ? _value.techs : techs as List<String>,
      gitLink: gitLink == freezed ? _value.gitLink : gitLink as String,
    ));
  }

  @override
  $ImageLinkCopyWith<$Res> get image {
    if (_value.image == null) {
      return null;
    }
    return $ImageLinkCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
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
      {@JsonKey(name: 'imagelink') ImageLink image,
      String title,
      String details,
      List<String> techs,
      @JsonKey(name: 'gitlink') String gitLink});

  @override
  $ImageLinkCopyWith<$Res> get image;
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
      image: image == freezed ? _value.image : image as ImageLink,
      title: title == freezed ? _value.title : title as String,
      details: details == freezed ? _value.details : details as String,
      techs: techs == freezed ? _value.techs : techs as List<String>,
      gitLink: gitLink == freezed ? _value.gitLink : gitLink as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FeatureProject implements _FeatureProject {
  const _$_FeatureProject(
      {@required @JsonKey(name: 'imagelink') this.image,
      @required this.title,
      @required this.details,
      @required this.techs,
      @required @JsonKey(name: 'gitlink') this.gitLink})
      : assert(image != null),
        assert(title != null),
        assert(details != null),
        assert(techs != null),
        assert(gitLink != null);

  factory _$_FeatureProject.fromJson(Map<String, dynamic> json) =>
      _$_$_FeatureProjectFromJson(json);

  @override
  @JsonKey(name: 'imagelink')
  final ImageLink image;
  @override
  final String title;
  @override
  final String details;
  @override
  final List<String> techs;
  @override
  @JsonKey(name: 'gitlink')
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

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FeatureProjectToJson(this);
  }
}

abstract class _FeatureProject implements FeatureProject {
  const factory _FeatureProject(
      {@required @JsonKey(name: 'imagelink') ImageLink image,
      @required String title,
      @required String details,
      @required List<String> techs,
      @required @JsonKey(name: 'gitlink') String gitLink}) = _$_FeatureProject;

  factory _FeatureProject.fromJson(Map<String, dynamic> json) =
      _$_FeatureProject.fromJson;

  @override
  @JsonKey(name: 'imagelink')
  ImageLink get image;
  @override
  String get title;
  @override
  String get details;
  @override
  List<String> get techs;
  @override
  @JsonKey(name: 'gitlink')
  String get gitLink;
  @override
  _$FeatureProjectCopyWith<_FeatureProject> get copyWith;
}

ImageLink _$ImageLinkFromJson(Map<String, dynamic> json) {
  return _ImageLink.fromJson(json);
}

/// @nodoc
class _$ImageLinkTearOff {
  const _$ImageLinkTearOff();

// ignore: unused_element
  _ImageLink call({@required String url}) {
    return _ImageLink(
      url: url,
    );
  }

// ignore: unused_element
  ImageLink fromJson(Map<String, Object> json) {
    return ImageLink.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ImageLink = _$ImageLinkTearOff();

/// @nodoc
mixin _$ImageLink {
  String get url;

  Map<String, dynamic> toJson();
  $ImageLinkCopyWith<ImageLink> get copyWith;
}

/// @nodoc
abstract class $ImageLinkCopyWith<$Res> {
  factory $ImageLinkCopyWith(ImageLink value, $Res Function(ImageLink) then) =
      _$ImageLinkCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$ImageLinkCopyWithImpl<$Res> implements $ImageLinkCopyWith<$Res> {
  _$ImageLinkCopyWithImpl(this._value, this._then);

  final ImageLink _value;
  // ignore: unused_field
  final $Res Function(ImageLink) _then;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
abstract class _$ImageLinkCopyWith<$Res> implements $ImageLinkCopyWith<$Res> {
  factory _$ImageLinkCopyWith(
          _ImageLink value, $Res Function(_ImageLink) then) =
      __$ImageLinkCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$ImageLinkCopyWithImpl<$Res> extends _$ImageLinkCopyWithImpl<$Res>
    implements _$ImageLinkCopyWith<$Res> {
  __$ImageLinkCopyWithImpl(_ImageLink _value, $Res Function(_ImageLink) _then)
      : super(_value, (v) => _then(v as _ImageLink));

  @override
  _ImageLink get _value => super._value as _ImageLink;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_ImageLink(
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ImageLink implements _ImageLink {
  const _$_ImageLink({@required this.url}) : assert(url != null);

  factory _$_ImageLink.fromJson(Map<String, dynamic> json) =>
      _$_$_ImageLinkFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'ImageLink(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageLink &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @override
  _$ImageLinkCopyWith<_ImageLink> get copyWith =>
      __$ImageLinkCopyWithImpl<_ImageLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImageLinkToJson(this);
  }
}

abstract class _ImageLink implements ImageLink {
  const factory _ImageLink({@required String url}) = _$_ImageLink;

  factory _ImageLink.fromJson(Map<String, dynamic> json) =
      _$_ImageLink.fromJson;

  @override
  String get url;
  @override
  _$ImageLinkCopyWith<_ImageLink> get copyWith;
}
