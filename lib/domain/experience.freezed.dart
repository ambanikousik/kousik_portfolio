// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Experience _$ExperienceFromJson(Map<String, dynamic> json) {
  return _Experience.fromJson(json);
}

/// @nodoc
class _$ExperienceTearOff {
  const _$ExperienceTearOff();

// ignore: unused_element
  _Experience call(
      {@required String title,
      @required String description,
      @required String duration}) {
    return _Experience(
      title: title,
      description: description,
      duration: duration,
    );
  }

// ignore: unused_element
  Experience fromJson(Map<String, Object> json) {
    return Experience.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Experience = _$ExperienceTearOff();

/// @nodoc
mixin _$Experience {
  String get title;
  String get description;
  String get duration;

  Map<String, dynamic> toJson();
  $ExperienceCopyWith<Experience> get copyWith;
}

/// @nodoc
abstract class $ExperienceCopyWith<$Res> {
  factory $ExperienceCopyWith(
          Experience value, $Res Function(Experience) then) =
      _$ExperienceCopyWithImpl<$Res>;
  $Res call({String title, String description, String duration});
}

/// @nodoc
class _$ExperienceCopyWithImpl<$Res> implements $ExperienceCopyWith<$Res> {
  _$ExperienceCopyWithImpl(this._value, this._then);

  final Experience _value;
  // ignore: unused_field
  final $Res Function(Experience) _then;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object duration = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      duration: duration == freezed ? _value.duration : duration as String,
    ));
  }
}

/// @nodoc
abstract class _$ExperienceCopyWith<$Res> implements $ExperienceCopyWith<$Res> {
  factory _$ExperienceCopyWith(
          _Experience value, $Res Function(_Experience) then) =
      __$ExperienceCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description, String duration});
}

/// @nodoc
class __$ExperienceCopyWithImpl<$Res> extends _$ExperienceCopyWithImpl<$Res>
    implements _$ExperienceCopyWith<$Res> {
  __$ExperienceCopyWithImpl(
      _Experience _value, $Res Function(_Experience) _then)
      : super(_value, (v) => _then(v as _Experience));

  @override
  _Experience get _value => super._value as _Experience;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object duration = freezed,
  }) {
    return _then(_Experience(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      duration: duration == freezed ? _value.duration : duration as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Experience implements _Experience {
  const _$_Experience(
      {@required this.title,
      @required this.description,
      @required this.duration})
      : assert(title != null),
        assert(description != null),
        assert(duration != null);

  factory _$_Experience.fromJson(Map<String, dynamic> json) =>
      _$_$_ExperienceFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String duration;

  @override
  String toString() {
    return 'Experience(title: $title, description: $description, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Experience &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(duration);

  @override
  _$ExperienceCopyWith<_Experience> get copyWith =>
      __$ExperienceCopyWithImpl<_Experience>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExperienceToJson(this);
  }
}

abstract class _Experience implements Experience {
  const factory _Experience(
      {@required String title,
      @required String description,
      @required String duration}) = _$_Experience;

  factory _Experience.fromJson(Map<String, dynamic> json) =
      _$_Experience.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get duration;
  @override
  _$ExperienceCopyWith<_Experience> get copyWith;
}
