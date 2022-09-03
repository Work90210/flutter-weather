// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Day _$DayFromJson(Map<String, dynamic> json) {
  return _Day.fromJson(json);
}

/// @nodoc
mixin _$Day {
  @JsonKey(name: 'maxtemp_c')
  double? get maxtempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxtemp_f')
  double? get maxtempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'mintemp_c')
  double? get mintempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'mintemp_f')
  double? get mintempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgtemp_c')
  double? get avgtempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgtemp_f')
  double? get avgtempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxwind_mph')
  double? get maxwindMph => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxwind_kph')
  double? get maxwindKph => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_will_it_rain')
  double? get dailyWillItRain => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_chance_of_rain')
  double? get dailyChanceOfRain => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_will_it_snow')
  double? get dailyWillItSnow => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_chance_of_snow')
  double? get dailyChanceOfSnow => throw _privateConstructorUsedError;
  Condition? get condition => throw _privateConstructorUsedError;
  double? get uv => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'maxtemp_c') double? maxtempC,
      @JsonKey(name: 'maxtemp_f') double? maxtempF,
      @JsonKey(name: 'mintemp_c') double? mintempC,
      @JsonKey(name: 'mintemp_f') double? mintempF,
      @JsonKey(name: 'avgtemp_c') double? avgtempC,
      @JsonKey(name: 'avgtemp_f') double? avgtempF,
      @JsonKey(name: 'maxwind_mph') double? maxwindMph,
      @JsonKey(name: 'maxwind_kph') double? maxwindKph,
      @JsonKey(name: 'daily_will_it_rain') double? dailyWillItRain,
      @JsonKey(name: 'daily_chance_of_rain') double? dailyChanceOfRain,
      @JsonKey(name: 'daily_will_it_snow') double? dailyWillItSnow,
      @JsonKey(name: 'daily_chance_of_snow') double? dailyChanceOfSnow,
      Condition? condition,
      double? uv});

  $ConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class _$DayCopyWithImpl<$Res> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  final Day _value;
  // ignore: unused_field
  final $Res Function(Day) _then;

  @override
  $Res call({
    Object? maxtempC = freezed,
    Object? maxtempF = freezed,
    Object? mintempC = freezed,
    Object? mintempF = freezed,
    Object? avgtempC = freezed,
    Object? avgtempF = freezed,
    Object? maxwindMph = freezed,
    Object? maxwindKph = freezed,
    Object? dailyWillItRain = freezed,
    Object? dailyChanceOfRain = freezed,
    Object? dailyWillItSnow = freezed,
    Object? dailyChanceOfSnow = freezed,
    Object? condition = freezed,
    Object? uv = freezed,
  }) {
    return _then(_value.copyWith(
      maxtempC: maxtempC == freezed
          ? _value.maxtempC
          : maxtempC // ignore: cast_nullable_to_non_nullable
              as double?,
      maxtempF: maxtempF == freezed
          ? _value.maxtempF
          : maxtempF // ignore: cast_nullable_to_non_nullable
              as double?,
      mintempC: mintempC == freezed
          ? _value.mintempC
          : mintempC // ignore: cast_nullable_to_non_nullable
              as double?,
      mintempF: mintempF == freezed
          ? _value.mintempF
          : mintempF // ignore: cast_nullable_to_non_nullable
              as double?,
      avgtempC: avgtempC == freezed
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as double?,
      avgtempF: avgtempF == freezed
          ? _value.avgtempF
          : avgtempF // ignore: cast_nullable_to_non_nullable
              as double?,
      maxwindMph: maxwindMph == freezed
          ? _value.maxwindMph
          : maxwindMph // ignore: cast_nullable_to_non_nullable
              as double?,
      maxwindKph: maxwindKph == freezed
          ? _value.maxwindKph
          : maxwindKph // ignore: cast_nullable_to_non_nullable
              as double?,
      dailyWillItRain: dailyWillItRain == freezed
          ? _value.dailyWillItRain
          : dailyWillItRain // ignore: cast_nullable_to_non_nullable
              as double?,
      dailyChanceOfRain: dailyChanceOfRain == freezed
          ? _value.dailyChanceOfRain
          : dailyChanceOfRain // ignore: cast_nullable_to_non_nullable
              as double?,
      dailyWillItSnow: dailyWillItSnow == freezed
          ? _value.dailyWillItSnow
          : dailyWillItSnow // ignore: cast_nullable_to_non_nullable
              as double?,
      dailyChanceOfSnow: dailyChanceOfSnow == freezed
          ? _value.dailyChanceOfSnow
          : dailyChanceOfSnow // ignore: cast_nullable_to_non_nullable
              as double?,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition?,
      uv: uv == freezed
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_DayCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$_DayCopyWith(_$_Day value, $Res Function(_$_Day) then) =
      __$$_DayCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'maxtemp_c') double? maxtempC,
      @JsonKey(name: 'maxtemp_f') double? maxtempF,
      @JsonKey(name: 'mintemp_c') double? mintempC,
      @JsonKey(name: 'mintemp_f') double? mintempF,
      @JsonKey(name: 'avgtemp_c') double? avgtempC,
      @JsonKey(name: 'avgtemp_f') double? avgtempF,
      @JsonKey(name: 'maxwind_mph') double? maxwindMph,
      @JsonKey(name: 'maxwind_kph') double? maxwindKph,
      @JsonKey(name: 'daily_will_it_rain') double? dailyWillItRain,
      @JsonKey(name: 'daily_chance_of_rain') double? dailyChanceOfRain,
      @JsonKey(name: 'daily_will_it_snow') double? dailyWillItSnow,
      @JsonKey(name: 'daily_chance_of_snow') double? dailyChanceOfSnow,
      Condition? condition,
      double? uv});

  @override
  $ConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class __$$_DayCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res>
    implements _$$_DayCopyWith<$Res> {
  __$$_DayCopyWithImpl(_$_Day _value, $Res Function(_$_Day) _then)
      : super(_value, (v) => _then(v as _$_Day));

  @override
  _$_Day get _value => super._value as _$_Day;

  @override
  $Res call({
    Object? maxtempC = freezed,
    Object? maxtempF = freezed,
    Object? mintempC = freezed,
    Object? mintempF = freezed,
    Object? avgtempC = freezed,
    Object? avgtempF = freezed,
    Object? maxwindMph = freezed,
    Object? maxwindKph = freezed,
    Object? dailyWillItRain = freezed,
    Object? dailyChanceOfRain = freezed,
    Object? dailyWillItSnow = freezed,
    Object? dailyChanceOfSnow = freezed,
    Object? condition = freezed,
    Object? uv = freezed,
  }) {
    return _then(_$_Day(
      maxtempC: maxtempC == freezed
          ? _value.maxtempC
          : maxtempC // ignore: cast_nullable_to_non_nullable
              as double?,
      maxtempF: maxtempF == freezed
          ? _value.maxtempF
          : maxtempF // ignore: cast_nullable_to_non_nullable
              as double?,
      mintempC: mintempC == freezed
          ? _value.mintempC
          : mintempC // ignore: cast_nullable_to_non_nullable
              as double?,
      mintempF: mintempF == freezed
          ? _value.mintempF
          : mintempF // ignore: cast_nullable_to_non_nullable
              as double?,
      avgtempC: avgtempC == freezed
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as double?,
      avgtempF: avgtempF == freezed
          ? _value.avgtempF
          : avgtempF // ignore: cast_nullable_to_non_nullable
              as double?,
      maxwindMph: maxwindMph == freezed
          ? _value.maxwindMph
          : maxwindMph // ignore: cast_nullable_to_non_nullable
              as double?,
      maxwindKph: maxwindKph == freezed
          ? _value.maxwindKph
          : maxwindKph // ignore: cast_nullable_to_non_nullable
              as double?,
      dailyWillItRain: dailyWillItRain == freezed
          ? _value.dailyWillItRain
          : dailyWillItRain // ignore: cast_nullable_to_non_nullable
              as double?,
      dailyChanceOfRain: dailyChanceOfRain == freezed
          ? _value.dailyChanceOfRain
          : dailyChanceOfRain // ignore: cast_nullable_to_non_nullable
              as double?,
      dailyWillItSnow: dailyWillItSnow == freezed
          ? _value.dailyWillItSnow
          : dailyWillItSnow // ignore: cast_nullable_to_non_nullable
              as double?,
      dailyChanceOfSnow: dailyChanceOfSnow == freezed
          ? _value.dailyChanceOfSnow
          : dailyChanceOfSnow // ignore: cast_nullable_to_non_nullable
              as double?,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition?,
      uv: uv == freezed
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Day implements _Day {
  _$_Day(
      {@JsonKey(name: 'maxtemp_c') this.maxtempC,
      @JsonKey(name: 'maxtemp_f') this.maxtempF,
      @JsonKey(name: 'mintemp_c') this.mintempC,
      @JsonKey(name: 'mintemp_f') this.mintempF,
      @JsonKey(name: 'avgtemp_c') this.avgtempC,
      @JsonKey(name: 'avgtemp_f') this.avgtempF,
      @JsonKey(name: 'maxwind_mph') this.maxwindMph,
      @JsonKey(name: 'maxwind_kph') this.maxwindKph,
      @JsonKey(name: 'daily_will_it_rain') this.dailyWillItRain,
      @JsonKey(name: 'daily_chance_of_rain') this.dailyChanceOfRain,
      @JsonKey(name: 'daily_will_it_snow') this.dailyWillItSnow,
      @JsonKey(name: 'daily_chance_of_snow') this.dailyChanceOfSnow,
      this.condition,
      this.uv});

  factory _$_Day.fromJson(Map<String, dynamic> json) => _$$_DayFromJson(json);

  @override
  @JsonKey(name: 'maxtemp_c')
  final double? maxtempC;
  @override
  @JsonKey(name: 'maxtemp_f')
  final double? maxtempF;
  @override
  @JsonKey(name: 'mintemp_c')
  final double? mintempC;
  @override
  @JsonKey(name: 'mintemp_f')
  final double? mintempF;
  @override
  @JsonKey(name: 'avgtemp_c')
  final double? avgtempC;
  @override
  @JsonKey(name: 'avgtemp_f')
  final double? avgtempF;
  @override
  @JsonKey(name: 'maxwind_mph')
  final double? maxwindMph;
  @override
  @JsonKey(name: 'maxwind_kph')
  final double? maxwindKph;
  @override
  @JsonKey(name: 'daily_will_it_rain')
  final double? dailyWillItRain;
  @override
  @JsonKey(name: 'daily_chance_of_rain')
  final double? dailyChanceOfRain;
  @override
  @JsonKey(name: 'daily_will_it_snow')
  final double? dailyWillItSnow;
  @override
  @JsonKey(name: 'daily_chance_of_snow')
  final double? dailyChanceOfSnow;
  @override
  final Condition? condition;
  @override
  final double? uv;

  @override
  String toString() {
    return 'Day(maxtempC: $maxtempC, maxtempF: $maxtempF, mintempC: $mintempC, mintempF: $mintempF, avgtempC: $avgtempC, avgtempF: $avgtempF, maxwindMph: $maxwindMph, maxwindKph: $maxwindKph, dailyWillItRain: $dailyWillItRain, dailyChanceOfRain: $dailyChanceOfRain, dailyWillItSnow: $dailyWillItSnow, dailyChanceOfSnow: $dailyChanceOfSnow, condition: $condition, uv: $uv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Day &&
            const DeepCollectionEquality().equals(other.maxtempC, maxtempC) &&
            const DeepCollectionEquality().equals(other.maxtempF, maxtempF) &&
            const DeepCollectionEquality().equals(other.mintempC, mintempC) &&
            const DeepCollectionEquality().equals(other.mintempF, mintempF) &&
            const DeepCollectionEquality().equals(other.avgtempC, avgtempC) &&
            const DeepCollectionEquality().equals(other.avgtempF, avgtempF) &&
            const DeepCollectionEquality()
                .equals(other.maxwindMph, maxwindMph) &&
            const DeepCollectionEquality()
                .equals(other.maxwindKph, maxwindKph) &&
            const DeepCollectionEquality()
                .equals(other.dailyWillItRain, dailyWillItRain) &&
            const DeepCollectionEquality()
                .equals(other.dailyChanceOfRain, dailyChanceOfRain) &&
            const DeepCollectionEquality()
                .equals(other.dailyWillItSnow, dailyWillItSnow) &&
            const DeepCollectionEquality()
                .equals(other.dailyChanceOfSnow, dailyChanceOfSnow) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality().equals(other.uv, uv));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maxtempC),
      const DeepCollectionEquality().hash(maxtempF),
      const DeepCollectionEquality().hash(mintempC),
      const DeepCollectionEquality().hash(mintempF),
      const DeepCollectionEquality().hash(avgtempC),
      const DeepCollectionEquality().hash(avgtempF),
      const DeepCollectionEquality().hash(maxwindMph),
      const DeepCollectionEquality().hash(maxwindKph),
      const DeepCollectionEquality().hash(dailyWillItRain),
      const DeepCollectionEquality().hash(dailyChanceOfRain),
      const DeepCollectionEquality().hash(dailyWillItSnow),
      const DeepCollectionEquality().hash(dailyChanceOfSnow),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(uv));

  @JsonKey(ignore: true)
  @override
  _$$_DayCopyWith<_$_Day> get copyWith =>
      __$$_DayCopyWithImpl<_$_Day>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayToJson(
      this,
    );
  }
}

abstract class _Day implements Day {
  factory _Day(
      {@JsonKey(name: 'maxtemp_c') final double? maxtempC,
      @JsonKey(name: 'maxtemp_f') final double? maxtempF,
      @JsonKey(name: 'mintemp_c') final double? mintempC,
      @JsonKey(name: 'mintemp_f') final double? mintempF,
      @JsonKey(name: 'avgtemp_c') final double? avgtempC,
      @JsonKey(name: 'avgtemp_f') final double? avgtempF,
      @JsonKey(name: 'maxwind_mph') final double? maxwindMph,
      @JsonKey(name: 'maxwind_kph') final double? maxwindKph,
      @JsonKey(name: 'daily_will_it_rain') final double? dailyWillItRain,
      @JsonKey(name: 'daily_chance_of_rain') final double? dailyChanceOfRain,
      @JsonKey(name: 'daily_will_it_snow') final double? dailyWillItSnow,
      @JsonKey(name: 'daily_chance_of_snow') final double? dailyChanceOfSnow,
      final Condition? condition,
      final double? uv}) = _$_Day;

  factory _Day.fromJson(Map<String, dynamic> json) = _$_Day.fromJson;

  @override
  @JsonKey(name: 'maxtemp_c')
  double? get maxtempC;
  @override
  @JsonKey(name: 'maxtemp_f')
  double? get maxtempF;
  @override
  @JsonKey(name: 'mintemp_c')
  double? get mintempC;
  @override
  @JsonKey(name: 'mintemp_f')
  double? get mintempF;
  @override
  @JsonKey(name: 'avgtemp_c')
  double? get avgtempC;
  @override
  @JsonKey(name: 'avgtemp_f')
  double? get avgtempF;
  @override
  @JsonKey(name: 'maxwind_mph')
  double? get maxwindMph;
  @override
  @JsonKey(name: 'maxwind_kph')
  double? get maxwindKph;
  @override
  @JsonKey(name: 'daily_will_it_rain')
  double? get dailyWillItRain;
  @override
  @JsonKey(name: 'daily_chance_of_rain')
  double? get dailyChanceOfRain;
  @override
  @JsonKey(name: 'daily_will_it_snow')
  double? get dailyWillItSnow;
  @override
  @JsonKey(name: 'daily_chance_of_snow')
  double? get dailyChanceOfSnow;
  @override
  Condition? get condition;
  @override
  double? get uv;
  @override
  @JsonKey(ignore: true)
  _$$_DayCopyWith<_$_Day> get copyWith => throw _privateConstructorUsedError;
}
