// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'works_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WorksEventTearOff {
  const _$WorksEventTearOff();

// ignore: unused_element
  _Load load() {
    return const _Load();
  }
}

/// @nodoc
// ignore: unused_element
const $WorksEvent = _$WorksEventTearOff();

/// @nodoc
mixin _$WorksEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $WorksEventCopyWith<$Res> {
  factory $WorksEventCopyWith(
          WorksEvent value, $Res Function(WorksEvent) then) =
      _$WorksEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorksEventCopyWithImpl<$Res> implements $WorksEventCopyWith<$Res> {
  _$WorksEventCopyWithImpl(this._value, this._then);

  final WorksEvent _value;
  // ignore: unused_field
  final $Res Function(WorksEvent) _then;
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$WorksEventCopyWithImpl<$Res>
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
    return 'WorksEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
  }) {
    assert(load != null);
    return load();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
  }) {
    assert(load != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements WorksEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
class _$WorksStateTearOff {
  const _$WorksStateTearOff();

// ignore: unused_element
  _WorksState call(
      {@required List<FeatureProject> projects,
      @required bool loading,
      @required String errorMsg}) {
    return _WorksState(
      projects: projects,
      loading: loading,
      errorMsg: errorMsg,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WorksState = _$WorksStateTearOff();

/// @nodoc
mixin _$WorksState {
  List<FeatureProject> get projects;
  bool get loading;
  String get errorMsg;

  $WorksStateCopyWith<WorksState> get copyWith;
}

/// @nodoc
abstract class $WorksStateCopyWith<$Res> {
  factory $WorksStateCopyWith(
          WorksState value, $Res Function(WorksState) then) =
      _$WorksStateCopyWithImpl<$Res>;
  $Res call({List<FeatureProject> projects, bool loading, String errorMsg});
}

/// @nodoc
class _$WorksStateCopyWithImpl<$Res> implements $WorksStateCopyWith<$Res> {
  _$WorksStateCopyWithImpl(this._value, this._then);

  final WorksState _value;
  // ignore: unused_field
  final $Res Function(WorksState) _then;

  @override
  $Res call({
    Object projects = freezed,
    Object loading = freezed,
    Object errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      projects: projects == freezed
          ? _value.projects
          : projects as List<FeatureProject>,
      loading: loading == freezed ? _value.loading : loading as bool,
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

/// @nodoc
abstract class _$WorksStateCopyWith<$Res> implements $WorksStateCopyWith<$Res> {
  factory _$WorksStateCopyWith(
          _WorksState value, $Res Function(_WorksState) then) =
      __$WorksStateCopyWithImpl<$Res>;
  @override
  $Res call({List<FeatureProject> projects, bool loading, String errorMsg});
}

/// @nodoc
class __$WorksStateCopyWithImpl<$Res> extends _$WorksStateCopyWithImpl<$Res>
    implements _$WorksStateCopyWith<$Res> {
  __$WorksStateCopyWithImpl(
      _WorksState _value, $Res Function(_WorksState) _then)
      : super(_value, (v) => _then(v as _WorksState));

  @override
  _WorksState get _value => super._value as _WorksState;

  @override
  $Res call({
    Object projects = freezed,
    Object loading = freezed,
    Object errorMsg = freezed,
  }) {
    return _then(_WorksState(
      projects: projects == freezed
          ? _value.projects
          : projects as List<FeatureProject>,
      loading: loading == freezed ? _value.loading : loading as bool,
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

/// @nodoc
class _$_WorksState implements _WorksState {
  const _$_WorksState(
      {@required this.projects,
      @required this.loading,
      @required this.errorMsg})
      : assert(projects != null),
        assert(loading != null),
        assert(errorMsg != null);

  @override
  final List<FeatureProject> projects;
  @override
  final bool loading;
  @override
  final String errorMsg;

  @override
  String toString() {
    return 'WorksState(projects: $projects, loading: $loading, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorksState &&
            (identical(other.projects, projects) ||
                const DeepCollectionEquality()
                    .equals(other.projects, projects)) &&
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
      const DeepCollectionEquality().hash(projects) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(errorMsg);

  @override
  _$WorksStateCopyWith<_WorksState> get copyWith =>
      __$WorksStateCopyWithImpl<_WorksState>(this, _$identity);
}

abstract class _WorksState implements WorksState {
  const factory _WorksState(
      {@required List<FeatureProject> projects,
      @required bool loading,
      @required String errorMsg}) = _$_WorksState;

  @override
  List<FeatureProject> get projects;
  @override
  bool get loading;
  @override
  String get errorMsg;
  @override
  _$WorksStateCopyWith<_WorksState> get copyWith;
}
