// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
mixin _$Current {
  @JsonKey(name: 'last_updated_epoch')
  int? get lastUpdatedEpoch => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated')
  String? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_c')
  double? get tempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_f')
  double? get tempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_day')
  int? get isDay => throw _privateConstructorUsedError;
  Condition? get condition => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_mph')
  double? get windMph => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_kph')
  int? get windKph => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_degree')
  int? get windDegree => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_dir')
  String? get windDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure_mb')
  int? get pressureMb => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure_in')
  double? get pressureIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'precip_mm')
  int? get precipMm => throw _privateConstructorUsedError;
  @JsonKey(name: 'precip_in')
  int? get precipIn => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  int? get cloud => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_c')
  int? get feelslikeC => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_f')
  double? get feelslikeF => throw _privateConstructorUsedError;
  @JsonKey(name: 'vis_km')
  int? get visKm => throw _privateConstructorUsedError;
  @JsonKey(name: 'vis_miles')
  int? get visMiles => throw _privateConstructorUsedError;
  int? get uv => throw _privateConstructorUsedError;
  @JsonKey(name: 'gust_mph')
  double? get gustMph => throw _privateConstructorUsedError;
  @JsonKey(name: 'gust_kph')
  double? get gustKph => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'last_updated_epoch') int? lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') String? lastUpdated,
      @JsonKey(name: 'temp_c') double? tempC,
      @JsonKey(name: 'temp_f') double? tempF,
      @JsonKey(name: 'is_day') int? isDay,
      Condition? condition,
      @JsonKey(name: 'wind_mph') double? windMph,
      @JsonKey(name: 'wind_kph') int? windKph,
      @JsonKey(name: 'wind_degree') int? windDegree,
      @JsonKey(name: 'wind_dir') String? windDir,
      @JsonKey(name: 'pressure_mb') int? pressureMb,
      @JsonKey(name: 'pressure_in') double? pressureIn,
      @JsonKey(name: 'precip_mm') int? precipMm,
      @JsonKey(name: 'precip_in') int? precipIn,
      int? humidity,
      int? cloud,
      @JsonKey(name: 'feelslike_c') int? feelslikeC,
      @JsonKey(name: 'feelslike_f') double? feelslikeF,
      @JsonKey(name: 'vis_km') int? visKm,
      @JsonKey(name: 'vis_miles') int? visMiles,
      int? uv,
      @JsonKey(name: 'gust_mph') double? gustMph,
      @JsonKey(name: 'gust_kph') double? gustKph});

  $ConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res> implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  final Current _value;
  // ignore: unused_field
  final $Res Function(Current) _then;

  @override
  $Res call({
    Object? lastUpdatedEpoch = freezed,
    Object? lastUpdated = freezed,
    Object? tempC = freezed,
    Object? tempF = freezed,
    Object? isDay = freezed,
    Object? condition = freezed,
    Object? windMph = freezed,
    Object? windKph = freezed,
    Object? windDegree = freezed,
    Object? windDir = freezed,
    Object? pressureMb = freezed,
    Object? pressureIn = freezed,
    Object? precipMm = freezed,
    Object? precipIn = freezed,
    Object? humidity = freezed,
    Object? cloud = freezed,
    Object? feelslikeC = freezed,
    Object? feelslikeF = freezed,
    Object? visKm = freezed,
    Object? visMiles = freezed,
    Object? uv = freezed,
    Object? gustMph = freezed,
    Object? gustKph = freezed,
  }) {
    return _then(_value.copyWith(
      lastUpdatedEpoch: lastUpdatedEpoch == freezed
          ? _value.lastUpdatedEpoch
          : lastUpdatedEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String?,
      tempC: tempC == freezed
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double?,
      tempF: tempF == freezed
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double?,
      isDay: isDay == freezed
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int?,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition?,
      windMph: windMph == freezed
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double?,
      windKph: windKph == freezed
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as int?,
      windDegree: windDegree == freezed
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int?,
      windDir: windDir == freezed
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String?,
      pressureMb: pressureMb == freezed
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as int?,
      pressureIn: pressureIn == freezed
          ? _value.pressureIn
          : pressureIn // ignore: cast_nullable_to_non_nullable
              as double?,
      precipMm: precipMm == freezed
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as int?,
      precipIn: precipIn == freezed
          ? _value.precipIn
          : precipIn // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      cloud: cloud == freezed
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int?,
      feelslikeC: feelslikeC == freezed
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as int?,
      feelslikeF: feelslikeF == freezed
          ? _value.feelslikeF
          : feelslikeF // ignore: cast_nullable_to_non_nullable
              as double?,
      visKm: visKm == freezed
          ? _value.visKm
          : visKm // ignore: cast_nullable_to_non_nullable
              as int?,
      visMiles: visMiles == freezed
          ? _value.visMiles
          : visMiles // ignore: cast_nullable_to_non_nullable
              as int?,
      uv: uv == freezed
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as int?,
      gustMph: gustMph == freezed
          ? _value.gustMph
          : gustMph // ignore: cast_nullable_to_non_nullable
              as double?,
      gustKph: gustKph == freezed
          ? _value.gustKph
          : gustKph // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $ConditionCopyWith<$Res>? get condition {
    if (_value.condition == null) {
      return null;
    }

    return $ConditionCopyWith<$Res>(_value.condition!, (value) {
      return _then(_value.copyWith(condition: value));
    });
  }
}

/// @nodoc
abstract class _$$_CurrentCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$$_CurrentCopyWith(
          _$_Current value, $Res Function(_$_Current) then) =
      __$$_CurrentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'last_updated_epoch') int? lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') String? lastUpdated,
      @JsonKey(name: 'temp_c') double? tempC,
      @JsonKey(name: 'temp_f') double? tempF,
      @JsonKey(name: 'is_day') int? isDay,
      Condition? condition,
      @JsonKey(name: 'wind_mph') double? windMph,
      @JsonKey(name: 'wind_kph') int? windKph,
      @JsonKey(name: 'wind_degree') int? windDegree,
      @JsonKey(name: 'wind_dir') String? windDir,
      @JsonKey(name: 'pressure_mb') int? pressureMb,
      @JsonKey(name: 'pressure_in') double? pressureIn,
      @JsonKey(name: 'precip_mm') int? precipMm,
      @JsonKey(name: 'precip_in') int? precipIn,
      int? humidity,
      int? cloud,
      @JsonKey(name: 'feelslike_c') int? feelslikeC,
      @JsonKey(name: 'feelslike_f') double? feelslikeF,
      @JsonKey(name: 'vis_km') int? visKm,
      @JsonKey(name: 'vis_miles') int? visMiles,
      int? uv,
      @JsonKey(name: 'gust_mph') double? gustMph,
      @JsonKey(name: 'gust_kph') double? gustKph});

  @override
  $ConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class __$$_CurrentCopyWithImpl<$Res> extends _$CurrentCopyWithImpl<$Res>
    implements _$$_CurrentCopyWith<$Res> {
  __$$_CurrentCopyWithImpl(_$_Current _value, $Res Function(_$_Current) _then)
      : super(_value, (v) => _then(v as _$_Current));

  @override
  _$_Current get _value => super._value as _$_Current;

  @override
  $Res call({
    Object? lastUpdatedEpoch = freezed,
    Object? lastUpdated = freezed,
    Object? tempC = freezed,
    Object? tempF = freezed,
    Object? isDay = freezed,
    Object? condition = freezed,
    Object? windMph = freezed,
    Object? windKph = freezed,
    Object? windDegree = freezed,
    Object? windDir = freezed,
    Object? pressureMb = freezed,
    Object? pressureIn = freezed,
    Object? precipMm = freezed,
    Object? precipIn = freezed,
    Object? humidity = freezed,
    Object? cloud = freezed,
    Object? feelslikeC = freezed,
    Object? feelslikeF = freezed,
    Object? visKm = freezed,
    Object? visMiles = freezed,
    Object? uv = freezed,
    Object? gustMph = freezed,
    Object? gustKph = freezed,
  }) {
    return _then(_$_Current(
      lastUpdatedEpoch: lastUpdatedEpoch == freezed
          ? _value.lastUpdatedEpoch
          : lastUpdatedEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String?,
      tempC: tempC == freezed
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double?,
      tempF: tempF == freezed
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double?,
      isDay: isDay == freezed
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int?,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition?,
      windMph: windMph == freezed
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double?,
      windKph: windKph == freezed
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as int?,
      windDegree: windDegree == freezed
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int?,
      windDir: windDir == freezed
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String?,
      pressureMb: pressureMb == freezed
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as int?,
      pressureIn: pressureIn == freezed
          ? _value.pressureIn
          : pressureIn // ignore: cast_nullable_to_non_nullable
              as double?,
      precipMm: precipMm == freezed
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as int?,
      precipIn: precipIn == freezed
          ? _value.precipIn
          : precipIn // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      cloud: cloud == freezed
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int?,
      feelslikeC: feelslikeC == freezed
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as int?,
      feelslikeF: feelslikeF == freezed
          ? _value.feelslikeF
          : feelslikeF // ignore: cast_nullable_to_non_nullable
              as double?,
      visKm: visKm == freezed
          ? _value.visKm
          : visKm // ignore: cast_nullable_to_non_nullable
              as int?,
      visMiles: visMiles == freezed
          ? _value.visMiles
          : visMiles // ignore: cast_nullable_to_non_nullable
              as int?,
      uv: uv == freezed
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as int?,
      gustMph: gustMph == freezed
          ? _value.gustMph
          : gustMph // ignore: cast_nullable_to_non_nullable
              as double?,
      gustKph: gustKph == freezed
          ? _value.gustKph
          : gustKph // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Current implements _Current {
  _$_Current(
      {@JsonKey(name: 'last_updated_epoch') this.lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') this.lastUpdated,
      @JsonKey(name: 'temp_c') this.tempC,
      @JsonKey(name: 'temp_f') this.tempF,
      @JsonKey(name: 'is_day') this.isDay,
      this.condition,
      @JsonKey(name: 'wind_mph') this.windMph,
      @JsonKey(name: 'wind_kph') this.windKph,
      @JsonKey(name: 'wind_degree') this.windDegree,
      @JsonKey(name: 'wind_dir') this.windDir,
      @JsonKey(name: 'pressure_mb') this.pressureMb,
      @JsonKey(name: 'pressure_in') this.pressureIn,
      @JsonKey(name: 'precip_mm') this.precipMm,
      @JsonKey(name: 'precip_in') this.precipIn,
      this.humidity,
      this.cloud,
      @JsonKey(name: 'feelslike_c') this.feelslikeC,
      @JsonKey(name: 'feelslike_f') this.feelslikeF,
      @JsonKey(name: 'vis_km') this.visKm,
      @JsonKey(name: 'vis_miles') this.visMiles,
      this.uv,
      @JsonKey(name: 'gust_mph') this.gustMph,
      @JsonKey(name: 'gust_kph') this.gustKph});

  factory _$_Current.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentFromJson(json);

  @override
  @JsonKey(name: 'last_updated_epoch')
  final int? lastUpdatedEpoch;
  @override
  @JsonKey(name: 'last_updated')
  final String? lastUpdated;
  @override
  @JsonKey(name: 'temp_c')
  final double? tempC;
  @override
  @JsonKey(name: 'temp_f')
  final double? tempF;
  @override
  @JsonKey(name: 'is_day')
  final int? isDay;
  @override
  final Condition? condition;
  @override
  @JsonKey(name: 'wind_mph')
  final double? windMph;
  @override
  @JsonKey(name: 'wind_kph')
  final int? windKph;
  @override
  @JsonKey(name: 'wind_degree')
  final int? windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  final String? windDir;
  @override
  @JsonKey(name: 'pressure_mb')
  final int? pressureMb;
  @override
  @JsonKey(name: 'pressure_in')
  final double? pressureIn;
  @override
  @JsonKey(name: 'precip_mm')
  final int? precipMm;
  @override
  @JsonKey(name: 'precip_in')
  final int? precipIn;
  @override
  final int? humidity;
  @override
  final int? cloud;
  @override
  @JsonKey(name: 'feelslike_c')
  final int? feelslikeC;
  @override
  @JsonKey(name: 'feelslike_f')
  final double? feelslikeF;
  @override
  @JsonKey(name: 'vis_km')
  final int? visKm;
  @override
  @JsonKey(name: 'vis_miles')
  final int? visMiles;
  @override
  final int? uv;
  @override
  @JsonKey(name: 'gust_mph')
  final double? gustMph;
  @override
  @JsonKey(name: 'gust_kph')
  final double? gustKph;

  @override
  String toString() {
    return 'Current(lastUpdatedEpoch: $lastUpdatedEpoch, lastUpdated: $lastUpdated, tempC: $tempC, tempF: $tempF, isDay: $isDay, condition: $condition, windMph: $windMph, windKph: $windKph, windDegree: $windDegree, windDir: $windDir, pressureMb: $pressureMb, pressureIn: $pressureIn, precipMm: $precipMm, precipIn: $precipIn, humidity: $humidity, cloud: $cloud, feelslikeC: $feelslikeC, feelslikeF: $feelslikeF, visKm: $visKm, visMiles: $visMiles, uv: $uv, gustMph: $gustMph, gustKph: $gustKph)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Current &&
            const DeepCollectionEquality()
                .equals(other.lastUpdatedEpoch, lastUpdatedEpoch) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.tempC, tempC) &&
            const DeepCollectionEquality().equals(other.tempF, tempF) &&
            const DeepCollectionEquality().equals(other.isDay, isDay) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality().equals(other.windMph, windMph) &&
            const DeepCollectionEquality().equals(other.windKph, windKph) &&
            const DeepCollectionEquality()
                .equals(other.windDegree, windDegree) &&
            const DeepCollectionEquality().equals(other.windDir, windDir) &&
            const DeepCollectionEquality()
                .equals(other.pressureMb, pressureMb) &&
            const DeepCollectionEquality()
                .equals(other.pressureIn, pressureIn) &&
            const DeepCollectionEquality().equals(other.precipMm, precipMm) &&
            const DeepCollectionEquality().equals(other.precipIn, precipIn) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.cloud, cloud) &&
            const DeepCollectionEquality()
                .equals(other.feelslikeC, feelslikeC) &&
            const DeepCollectionEquality()
                .equals(other.feelslikeF, feelslikeF) &&
            const DeepCollectionEquality().equals(other.visKm, visKm) &&
            const DeepCollectionEquality().equals(other.visMiles, visMiles) &&
            const DeepCollectionEquality().equals(other.uv, uv) &&
            const DeepCollectionEquality().equals(other.gustMph, gustMph) &&
            const DeepCollectionEquality().equals(other.gustKph, gustKph));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(lastUpdatedEpoch),
        const DeepCollectionEquality().hash(lastUpdated),
        const DeepCollectionEquality().hash(tempC),
        const DeepCollectionEquality().hash(tempF),
        const DeepCollectionEquality().hash(isDay),
        const DeepCollectionEquality().hash(condition),
        const DeepCollectionEquality().hash(windMph),
        const DeepCollectionEquality().hash(windKph),
        const DeepCollectionEquality().hash(windDegree),
        const DeepCollectionEquality().hash(windDir),
        const DeepCollectionEquality().hash(pressureMb),
        const DeepCollectionEquality().hash(pressureIn),
        const DeepCollectionEquality().hash(precipMm),
        const DeepCollectionEquality().hash(precipIn),
        const DeepCollectionEquality().hash(humidity),
        const DeepCollectionEquality().hash(cloud),
        const DeepCollectionEquality().hash(feelslikeC),
        const DeepCollectionEquality().hash(feelslikeF),
        const DeepCollectionEquality().hash(visKm),
        const DeepCollectionEquality().hash(visMiles),
        const DeepCollectionEquality().hash(uv),
        const DeepCollectionEquality().hash(gustMph),
        const DeepCollectionEquality().hash(gustKph)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_CurrentCopyWith<_$_Current> get copyWith =>
      __$$_CurrentCopyWithImpl<_$_Current>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentToJson(
      this,
    );
  }
}

abstract class _Current implements Current {
  factory _Current(
      {@JsonKey(name: 'last_updated_epoch') final int? lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') final String? lastUpdated,
      @JsonKey(name: 'temp_c') final double? tempC,
      @JsonKey(name: 'temp_f') final double? tempF,
      @JsonKey(name: 'is_day') final int? isDay,
      final Condition? condition,
      @JsonKey(name: 'wind_mph') final double? windMph,
      @JsonKey(name: 'wind_kph') final int? windKph,
      @JsonKey(name: 'wind_degree') final int? windDegree,
      @JsonKey(name: 'wind_dir') final String? windDir,
      @JsonKey(name: 'pressure_mb') final int? pressureMb,
      @JsonKey(name: 'pressure_in') final double? pressureIn,
      @JsonKey(name: 'precip_mm') final int? precipMm,
      @JsonKey(name: 'precip_in') final int? precipIn,
      final int? humidity,
      final int? cloud,
      @JsonKey(name: 'feelslike_c') final int? feelslikeC,
      @JsonKey(name: 'feelslike_f') final double? feelslikeF,
      @JsonKey(name: 'vis_km') final int? visKm,
      @JsonKey(name: 'vis_miles') final int? visMiles,
      final int? uv,
      @JsonKey(name: 'gust_mph') final double? gustMph,
      @JsonKey(name: 'gust_kph') final double? gustKph}) = _$_Current;

  factory _Current.fromJson(Map<String, dynamic> json) = _$_Current.fromJson;

  @override
  @JsonKey(name: 'last_updated_epoch')
  int? get lastUpdatedEpoch;
  @override
  @JsonKey(name: 'last_updated')
  String? get lastUpdated;
  @override
  @JsonKey(name: 'temp_c')
  double? get tempC;
  @override
  @JsonKey(name: 'temp_f')
  double? get tempF;
  @override
  @JsonKey(name: 'is_day')
  int? get isDay;
  @override
  Condition? get condition;
  @override
  @JsonKey(name: 'wind_mph')
  double? get windMph;
  @override
  @JsonKey(name: 'wind_kph')
  int? get windKph;
  @override
  @JsonKey(name: 'wind_degree')
  int? get windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  String? get windDir;
  @override
  @JsonKey(name: 'pressure_mb')
  int? get pressureMb;
  @override
  @JsonKey(name: 'pressure_in')
  double? get pressureIn;
  @override
  @JsonKey(name: 'precip_mm')
  int? get precipMm;
  @override
  @JsonKey(name: 'precip_in')
  int? get precipIn;
  @override
  int? get humidity;
  @override
  int? get cloud;
  @override
  @JsonKey(name: 'feelslike_c')
  int? get feelslikeC;
  @override
  @JsonKey(name: 'feelslike_f')
  double? get feelslikeF;
  @override
  @JsonKey(name: 'vis_km')
  int? get visKm;
  @override
  @JsonKey(name: 'vis_miles')
  int? get visMiles;
  @override
  int? get uv;
  @override
  @JsonKey(name: 'gust_mph')
  double? get gustMph;
  @override
  @JsonKey(name: 'gust_kph')
  double? get gustKph;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentCopyWith<_$_Current> get copyWith =>
      throw _privateConstructorUsedError;
}
