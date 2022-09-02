// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forecastday.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Forecastday _$ForecastdayFromJson(Map<String, dynamic> json) {
  return _Forecastday.fromJson(json);
}

/// @nodoc
mixin _$Forecastday {
  @JsonKey(name: 'date_epoch')
  int? get dateEpoch => throw _privateConstructorUsedError;
  Day? get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastdayCopyWith<Forecastday> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastdayCopyWith<$Res> {
  factory $ForecastdayCopyWith(
          Forecastday value, $Res Function(Forecastday) then) =
      _$ForecastdayCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'date_epoch') int? dateEpoch, Day? day});

  $DayCopyWith<$Res>? get day;
}

/// @nodoc
class _$ForecastdayCopyWithImpl<$Res> implements $ForecastdayCopyWith<$Res> {
  _$ForecastdayCopyWithImpl(this._value, this._then);

  final Forecastday _value;
  // ignore: unused_field
  final $Res Function(Forecastday) _then;

  @override
  $Res call({
    Object? dateEpoch = freezed,
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      dateEpoch: dateEpoch == freezed
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day?,
    ));
  }

  @override
  $DayCopyWith<$Res>? get day {
    if (_value.day == null) {
      return null;
    }

    return $DayCopyWith<$Res>(_value.day!, (value) {
      return _then(_value.copyWith(day: value));
    });
  }
}

/// @nodoc
abstract class _$$_ForecastdayCopyWith<$Res>
    implements $ForecastdayCopyWith<$Res> {
  factory _$$_ForecastdayCopyWith(
          _$_Forecastday value, $Res Function(_$_Forecastday) then) =
      __$$_ForecastdayCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'date_epoch') int? dateEpoch, Day? day});

  @override
  $DayCopyWith<$Res>? get day;
}

/// @nodoc
class __$$_ForecastdayCopyWithImpl<$Res> extends _$ForecastdayCopyWithImpl<$Res>
    implements _$$_ForecastdayCopyWith<$Res> {
  __$$_ForecastdayCopyWithImpl(
      _$_Forecastday _value, $Res Function(_$_Forecastday) _then)
      : super(_value, (v) => _then(v as _$_Forecastday));

  @override
  _$_Forecastday get _value => super._value as _$_Forecastday;

  @override
  $Res call({
    Object? dateEpoch = freezed,
    Object? day = freezed,
  }) {
    return _then(_$_Forecastday(
      dateEpoch: dateEpoch == freezed
          ? _value.dateEpoch
          : dateEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Forecastday implements _Forecastday {
  _$_Forecastday({@JsonKey(name: 'date_epoch') this.dateEpoch, this.day});

  factory _$_Forecastday.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastdayFromJson(json);

  @override
  @JsonKey(name: 'date_epoch')
  final int? dateEpoch;
  @override
  final Day? day;

  @override
  String toString() {
    return 'Forecastday(dateEpoch: $dateEpoch, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Forecastday &&
            const DeepCollectionEquality().equals(other.dateEpoch, dateEpoch) &&
            const DeepCollectionEquality().equals(other.day, day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateEpoch),
      const DeepCollectionEquality().hash(day));

  @JsonKey(ignore: true)
  @override
  _$$_ForecastdayCopyWith<_$_Forecastday> get copyWith =>
      __$$_ForecastdayCopyWithImpl<_$_Forecastday>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastdayToJson(
      this,
    );
  }
}

abstract class _Forecastday implements Forecastday {
  factory _Forecastday(
      {@JsonKey(name: 'date_epoch') final int? dateEpoch,
      final Day? day}) = _$_Forecastday;

  factory _Forecastday.fromJson(Map<String, dynamic> json) =
      _$_Forecastday.fromJson;

  @override
  @JsonKey(name: 'date_epoch')
  int? get dateEpoch;
  @override
  Day? get day;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastdayCopyWith<_$_Forecastday> get copyWith =>
      throw _privateConstructorUsedError;
}
