// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExperienceEventTearOff {
  const _$ExperienceEventTearOff();

// ignore: unused_element
  _Load load() {
    return const _Load();
  }
}

/// @nodoc
// ignore: unused_element
const $ExperienceEvent = _$ExperienceEventTearOff();

/// @nodoc
mixin _$ExperienceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult load(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult load(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult load(_Load value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult load(_Load value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ExperienceEventCopyWith<$Res> {
  factory $ExperienceEventCopyWith(
          ExperienceEvent value, $Res Function(ExperienceEvent) then) =
      _$ExperienceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperienceEventCopyWithImpl<$Res>
    implements $ExperienceEventCopyWith<$Res> {
  _$ExperienceEventCopyWithImpl(this._value, this._then);

  final ExperienceEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceEvent) _then;
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$ExperienceEventCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;
}

/// @nodoc
class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'ExperienceEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult load(),
  }) {
    assert(load != null);
    return load();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult load(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult load(_Load value),
  }) {
    assert(load != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult load(_Load value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ExperienceEvent {
  const factory _Load() = _$_Load;
}
