// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExperienceStateTearOff {
  const _$ExperienceStateTearOff();

// ignore: unused_element
  _ExperienceState call(
      {@required List<Experience> experiences,
      @required bool loading,
      @required String errorMsg}) {
    return _ExperienceState(
      experiences: experiences,
      loading: loading,
      errorMsg: errorMsg,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExperienceState = _$ExperienceStateTearOff();

/// @nodoc
mixin _$ExperienceState {
  List<Experience> get experiences;
  bool get loading;
  String get errorMsg;

  $ExperienceStateCopyWith<ExperienceState> get copyWith;
}

/// @nodoc
abstract class $ExperienceStateCopyWith<$Res> {
  factory $ExperienceStateCopyWith(
          ExperienceState value, $Res Function(ExperienceState) then) =
      _$ExperienceStateCopyWithImpl<$Res>;
  $Res call({List<Experience> experiences, bool loading, String errorMsg});
}

/// @nodoc
class _$ExperienceStateCopyWithImpl<$Res>
    implements $ExperienceStateCopyWith<$Res> {
  _$ExperienceStateCopyWithImpl(this._value, this._then);

  final ExperienceState _value;
  // ignore: unused_field
  final $Res Function(ExperienceState) _then;

  @override
  $Res call({
    Object experiences = freezed,
    Object loading = freezed,
    Object errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      experiences: experiences == freezed
          ? _value.experiences
          : experiences as List<Experience>,
      loading: loading == freezed ? _value.loading : loading as bool,
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

/// @nodoc
abstract class _$ExperienceStateCopyWith<$Res>
    implements $ExperienceStateCopyWith<$Res> {
  factory _$ExperienceStateCopyWith(
          _ExperienceState value, $Res Function(_ExperienceState) then) =
      __$ExperienceStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Experience> experiences, bool loading, String errorMsg});
}

/// @nodoc
class __$ExperienceStateCopyWithImpl<$Res>
    extends _$ExperienceStateCopyWithImpl<$Res>
    implements _$ExperienceStateCopyWith<$Res> {
  __$ExperienceStateCopyWithImpl(
      _ExperienceState _value, $Res Function(_ExperienceState) _then)
      : super(_value, (v) => _then(v as _ExperienceState));

  @override
  _ExperienceState get _value => super._value as _ExperienceState;

  @override
  $Res call({
    Object experiences = freezed,
    Object loading = freezed,
    Object errorMsg = freezed,
  }) {
    return _then(_ExperienceState(
      experiences: experiences == freezed
          ? _value.experiences
          : experiences as List<Experience>,
      loading: loading == freezed ? _value.loading : loading as bool,
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

/// @nodoc
class _$_ExperienceState implements _ExperienceState {
  const _$_ExperienceState(
      {@required this.experiences,
      @required this.loading,
      @required this.errorMsg})
      : assert(experiences != null),
        assert(loading != null),
        assert(errorMsg != null);

  @override
  final List<Experience> experiences;
  @override
  final bool loading;
  @override
  final String errorMsg;

  @override
  String toString() {
    return 'ExperienceState(experiences: $experiences, loading: $loading, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperienceState &&
            (identical(other.experiences, experiences) ||
                const DeepCollectionEquality()
                    .equals(other.experiences, experiences)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.errorMsg, errorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.errorMsg, errorMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(experiences) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(errorMsg);

  @override
  _$ExperienceStateCopyWith<_ExperienceState> get copyWith =>
      __$ExperienceStateCopyWithImpl<_ExperienceState>(this, _$identity);
}

abstract class _ExperienceState implements ExperienceState {
  const factory _ExperienceState(
      {@required List<Experience> experiences,
      @required bool loading,
      @required String errorMsg}) = _$_ExperienceState;

  @override
  List<Experience> get experiences;
  @override
  bool get loading;
  @override
  String get errorMsg;
  @override
  _$ExperienceStateCopyWith<_ExperienceState> get copyWith;
}
