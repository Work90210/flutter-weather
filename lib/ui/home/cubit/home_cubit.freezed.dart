// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String currentCountry,
            String currentName,
            double currentTemp,
            List<Forecastday> fiveDayForeCast,
            Condition currentCondition)
        loaded,
    required TResult Function() loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String currentCountry,
            String currentName,
            double currentTemp,
            List<Forecastday> fiveDayForeCast,
            Condition currentCondition)?
        loaded,
    TResult Function()? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String currentCountry,
            String currentName,
            double currentTemp,
            List<Forecastday> fiveDayForeCast,
            Condition currentCondition)?
        loaded,
    TResult Function()? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(HomeLoadFailedState value) loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeLoadFailedState value)? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeLoadFailedState value)? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$$HomeLoadingStateCopyWith<$Res> {
  factory _$$HomeLoadingStateCopyWith(
          _$HomeLoadingState value, $Res Function(_$HomeLoadingState) then) =
      __$$HomeLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadingStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeLoadingStateCopyWith<$Res> {
  __$$HomeLoadingStateCopyWithImpl(
      _$HomeLoadingState _value, $Res Function(_$HomeLoadingState) _then)
      : super(_value, (v) => _then(v as _$HomeLoadingState));

  @override
  _$HomeLoadingState get _value => super._value as _$HomeLoadingState;
}

/// @nodoc

class _$HomeLoadingState implements HomeLoadingState {
  const _$HomeLoadingState();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String currentCountry,
            String currentName,
            double currentTemp,
            List<Forecastday> fiveDayForeCast,
            Condition currentCondition)
        loaded,
    required TResult Function() loadFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String currentCountry,
            String currentName,
            double currentTemp,
            List<Forecastday> fiveDayForeCast,
            Condition currentCondition)?
        loaded,
    TResult Function()? loadFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String currentCountry,
            String currentName,
            double currentTemp,
            List<Forecastday> fiveDayForeCast,
            Condition currentCondition)?
        loaded,
    TResult Function()? loadFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(HomeLoadFailedState value) loadFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeLoadFailedState value)? loadFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeLoadFailedState value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeLoadingState implements HomeState {
  const factory HomeLoadingState() = _$HomeLoadingState;
}

/// @nodoc
abstract class _$$HomeLoadedStateCopyWith<$Res> {
  factory _$$HomeLoadedStateCopyWith(
          _$HomeLoadedState value, $Res Function(_$HomeLoadedState) then) =
      __$$HomeLoadedStateCopyWithImpl<$Res>;
  $Res call(
      {String currentCountry,
      String currentName,
      double currentTemp,
      List<Forecastday> fiveDayForeCast,
      Condition currentCondition});

  $ConditionCopyWith<$Res> get currentCondition;
}

/// @nodoc
class __$$HomeLoadedStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeLoadedStateCopyWith<$Res> {
  __$$HomeLoadedStateCopyWithImpl(
      _$HomeLoadedState _value, $Res Function(_$HomeLoadedState) _then)
      : super(_value, (v) => _then(v as _$HomeLoadedState));

  @override
  _$HomeLoadedState get _value => super._value as _$HomeLoadedState;

  @override
  $Res call({
    Object? currentCountry = freezed,
    Object? currentName = freezed,
    Object? currentTemp = freezed,
    Object? fiveDayForeCast = freezed,
    Object? currentCondition = freezed,
  }) {
    return _then(_$HomeLoadedState(
      currentCountry: currentCountry == freezed
          ? _value.currentCountry
          : currentCountry // ignore: cast_nullable_to_non_nullable
              as String,
      currentName: currentName == freezed
          ? _value.currentName
          : currentName // ignore: cast_nullable_to_non_nullable
              as String,
      currentTemp: currentTemp == freezed
          ? _value.currentTemp
          : currentTemp // ignore: cast_nullable_to_non_nullable
              as double,
      fiveDayForeCast: fiveDayForeCast == freezed
          ? _value._fiveDayForeCast
          : fiveDayForeCast // ignore: cast_nullable_to_non_nullable
              as List<Forecastday>,
      currentCondition: currentCondition == freezed
          ? _value.currentCondition
          : currentCondition // ignore: cast_nullable_to_non_nullable
              as Condition,
    ));
  }

  @override
  $ConditionCopyWith<$Res> get currentCondition {
    return $ConditionCopyWith<$Res>(_value.currentCondition, (value) {
      return _then(_value.copyWith(currentCondition: value));
    });
  }
}

/// @nodoc

class _$HomeLoadedState implements HomeLoadedState {
  const _$HomeLoadedState(
      {required this.currentCountry,
      required this.currentName,
      required this.currentTemp,
      required final List<Forecastday> fiveDayForeCast,
      required this.currentCondition})
      : _fiveDayForeCast = fiveDayForeCast;

  @override
  final String currentCountry;
  @override
  final String currentName;
  @override
  final double currentTemp;
  final List<Forecastday> _fiveDayForeCast;
  @override
  List<Forecastday> get fiveDayForeCast {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fiveDayForeCast);
  }

  @override
  final Condition currentCondition;

  @override
  String toString() {
    return 'HomeState.loaded(currentCountry: $currentCountry, currentName: $currentName, currentTemp: $currentTemp, fiveDayForeCast: $fiveDayForeCast, currentCondition: $currentCondition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadedState &&
            const DeepCollectionEquality()
                .equals(other.currentCountry, currentCountry) &&
            const DeepCollectionEquality()
                .equals(other.currentName, currentName) &&
            const DeepCollectionEquality()
                .equals(other.currentTemp, currentTemp) &&
            const DeepCollectionEquality()
                .equals(other._fiveDayForeCast, _fiveDayForeCast) &&
            const DeepCollectionEquality()
                .equals(other.currentCondition, currentCondition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentCountry),
      const DeepCollectionEquality().hash(currentName),
      const DeepCollectionEquality().hash(currentTemp),
      const DeepCollectionEquality().hash(_fiveDayForeCast),
      const DeepCollectionEquality().hash(currentCondition));

  @JsonKey(ignore: true)
  @override
  _$$HomeLoadedStateCopyWith<_$HomeLoadedState> get copyWith =>
      __$$HomeLoadedStateCopyWithImpl<_$HomeLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String currentCountry,
            String currentName,
            double currentTemp,
            List<Forecastday> fiveDayForeCast,
            Condition currentCondition)
        loaded,
    required TResult Function() loadFailed,
  }) {
    return loaded(currentCountry, currentName, currentTemp, fiveDayForeCast,
        currentCondition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String currentCountry,
            String currentName,
            double currentTemp,
            List<Forecastday> fiveDayForeCast,
            Condition currentCondition)?
        loaded,
    TResult Function()? loadFailed,
  }) {
    return loaded?.call(currentCountry, currentName, currentTemp,
        fiveDayForeCast, currentCondition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String currentCountry,
            String currentName,
            double currentTemp,
            List<Forecastday> fiveDayForeCast,
            Condition currentCondition)?
        loaded,
    TResult Function()? loadFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currentCountry, currentName, currentTemp, fiveDayForeCast,
          currentCondition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(HomeLoadFailedState value) loadFailed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeLoadFailedState value)? loadFailed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeLoadFailedState value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeLoadedState implements HomeState {
  const factory HomeLoadedState(
      {required final String currentCountry,
      required final String currentName,
      required final double currentTemp,
      required final List<Forecastday> fiveDayForeCast,
      required final Condition currentCondition}) = _$HomeLoadedState;

  String get currentCountry;
  String get currentName;
  double get currentTemp;
  List<Forecastday> get fiveDayForeCast;
  Condition get currentCondition;
  @JsonKey(ignore: true)
  _$$HomeLoadedStateCopyWith<_$HomeLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeLoadFailedStateCopyWith<$Res> {
  factory _$$HomeLoadFailedStateCopyWith(_$HomeLoadFailedState value,
          $Res Function(_$HomeLoadFailedState) then) =
      __$$HomeLoadFailedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadFailedStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeLoadFailedStateCopyWith<$Res> {
  __$$HomeLoadFailedStateCopyWithImpl(
      _$HomeLoadFailedState _value, $Res Function(_$HomeLoadFailedState) _then)
      : super(_value, (v) => _then(v as _$HomeLoadFailedState));

  @override
  _$HomeLoadFailedState get _value => super._value as _$HomeLoadFailedState;
}

/// @nodoc

class _$HomeLoadFailedState implements HomeLoadFailedState {
  const _$HomeLoadFailedState();

  @override
  String toString() {
    return 'HomeState.loadFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadFailedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String currentCountry,
            String currentName,
            double currentTemp,
            List<Forecastday> fiveDayForeCast,
            Condition currentCondition)
        loaded,
    required TResult Function() loadFailed,
  }) {
    return loadFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String currentCountry,
            String currentName,
            double currentTemp,
            List<Forecastday> fiveDayForeCast,
            Condition currentCondition)?
        loaded,
    TResult Function()? loadFailed,
  }) {
    return loadFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String currentCountry,
            String currentName,
            double currentTemp,
            List<Forecastday> fiveDayForeCast,
            Condition currentCondition)?
        loaded,
    TResult Function()? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(HomeLoadFailedState value) loadFailed,
  }) {
    return loadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeLoadFailedState value)? loadFailed,
  }) {
    return loadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeLoadFailedState value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(this);
    }
    return orElse();
  }
}

abstract class HomeLoadFailedState implements HomeState {
  const factory HomeLoadFailedState() = _$HomeLoadFailedState;
}
