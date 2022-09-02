// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherForecastModel _$WeatherForecastModelFromJson(Map<String, dynamic> json) {
  return _WeatherForecastModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastModel {
  Location? get location => throw _privateConstructorUsedError;
  Current? get current => throw _privateConstructorUsedError;
  Forecast? get forecast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastModelCopyWith<WeatherForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastModelCopyWith<$Res> {
  factory $WeatherForecastModelCopyWith(WeatherForecastModel value,
          $Res Function(WeatherForecastModel) then) =
      _$WeatherForecastModelCopyWithImpl<$Res>;
  $Res call({Location? location, Current? current, Forecast? forecast});

  $LocationCopyWith<$Res>? get location;
  $CurrentCopyWith<$Res>? get current;
  $ForecastCopyWith<$Res>? get forecast;
}

/// @nodoc
class _$WeatherForecastModelCopyWithImpl<$Res>
    implements $WeatherForecastModelCopyWith<$Res> {
  _$WeatherForecastModelCopyWithImpl(this._value, this._then);

  final WeatherForecastModel _value;
  // ignore: unused_field
  final $Res Function(WeatherForecastModel) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
      forecast: forecast == freezed
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast?,
    ));
  }

  @override
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $CurrentCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value));
    });
  }

  @override
  $ForecastCopyWith<$Res>? get forecast {
    if (_value.forecast == null) {
      return null;
    }

    return $ForecastCopyWith<$Res>(_value.forecast!, (value) {
      return _then(_value.copyWith(forecast: value));
    });
  }
}

/// @nodoc
abstract class _$$_WeatherForecastModelCopyWith<$Res>
    implements $WeatherForecastModelCopyWith<$Res> {
  factory _$$_WeatherForecastModelCopyWith(_$_WeatherForecastModel value,
          $Res Function(_$_WeatherForecastModel) then) =
      __$$_WeatherForecastModelCopyWithImpl<$Res>;
  @override
  $Res call({Location? location, Current? current, Forecast? forecast});

  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $CurrentCopyWith<$Res>? get current;
  @override
  $ForecastCopyWith<$Res>? get forecast;
}

/// @nodoc
class __$$_WeatherForecastModelCopyWithImpl<$Res>
    extends _$WeatherForecastModelCopyWithImpl<$Res>
    implements _$$_WeatherForecastModelCopyWith<$Res> {
  __$$_WeatherForecastModelCopyWithImpl(_$_WeatherForecastModel _value,
      $Res Function(_$_WeatherForecastModel) _then)
      : super(_value, (v) => _then(v as _$_WeatherForecastModel));

  @override
  _$_WeatherForecastModel get _value => super._value as _$_WeatherForecastModel;

  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_$_WeatherForecastModel(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
      forecast: forecast == freezed
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherForecastModel implements _WeatherForecastModel {
  _$_WeatherForecastModel({this.location, this.current, this.forecast});

  factory _$_WeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherForecastModelFromJson(json);

  @override
  final Location? location;
  @override
  final Current? current;
  @override
  final Forecast? forecast;

  @override
  String toString() {
    return 'WeatherForecastModel(location: $location, current: $current, forecast: $forecast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherForecastModel &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality().equals(other.forecast, forecast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(forecast));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherForecastModelCopyWith<_$_WeatherForecastModel> get copyWith =>
      __$$_WeatherForecastModelCopyWithImpl<_$_WeatherForecastModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherForecastModelToJson(
      this,
    );
  }
}

abstract class _WeatherForecastModel implements WeatherForecastModel {
  factory _WeatherForecastModel(
      {final Location? location,
      final Current? current,
      final Forecast? forecast}) = _$_WeatherForecastModel;

  factory _WeatherForecastModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherForecastModel.fromJson;

  @override
  Location? get location;
  @override
  Current? get current;
  @override
  Forecast? get forecast;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherForecastModelCopyWith<_$_WeatherForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}
