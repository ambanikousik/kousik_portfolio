// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ApiFailureTearOff {
  const _$ApiFailureTearOff();

// ignore: unused_element
  _ApiFailure call({@required String errorMsg}) {
    return _ApiFailure(
      errorMsg: errorMsg,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ApiFailure = _$ApiFailureTearOff();

/// @nodoc
mixin _$ApiFailure {
  String get errorMsg;

  $ApiFailureCopyWith<ApiFailure> get copyWith;
}

/// @nodoc
abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
          ApiFailure value, $Res Function(ApiFailure) then) =
      _$ApiFailureCopyWithImpl<$Res>;
  $Res call({String errorMsg});
}

/// @nodoc
class _$ApiFailureCopyWithImpl<$Res> implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  final ApiFailure _value;
  // ignore: unused_field
  final $Res Function(ApiFailure) _then;

  @override
  $Res call({
    Object errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

/// @nodoc
abstract class _$ApiFailureCopyWith<$Res> implements $ApiFailureCopyWith<$Res> {
  factory _$ApiFailureCopyWith(
          _ApiFailure value, $Res Function(_ApiFailure) then) =
      __$ApiFailureCopyWithImpl<$Res>;
  @override
  $Res call({String errorMsg});
}

/// @nodoc
class __$ApiFailureCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$ApiFailureCopyWith<$Res> {
  __$ApiFailureCopyWithImpl(
      _ApiFailure _value, $Res Function(_ApiFailure) _then)
      : super(_value, (v) => _then(v as _ApiFailure));

  @override
  _ApiFailure get _value => super._value as _ApiFailure;

  @override
  $Res call({
    Object errorMsg = freezed,
  }) {
    return _then(_ApiFailure(
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

/// @nodoc
class _$_ApiFailure implements _ApiFailure {
  const _$_ApiFailure({@required this.errorMsg}) : assert(errorMsg != null);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'ApiFailure(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiFailure &&
            (identical(other.errorMsg, errorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.errorMsg, errorMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMsg);

  @override
  _$ApiFailureCopyWith<_ApiFailure> get copyWith =>
      __$ApiFailureCopyWithImpl<_ApiFailure>(this, _$identity);
}

abstract class _ApiFailure implements ApiFailure {
  const factory _ApiFailure({@required String errorMsg}) = _$_ApiFailure;

  @override
  String get errorMsg;
  @override
  _$ApiFailureCopyWith<_ApiFailure> get copyWith;
}
