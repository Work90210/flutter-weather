// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecastday.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Forecastday _$$_ForecastdayFromJson(Map<String, dynamic> json) =>
    _$_Forecastday(
      dateEpoch: json['date_epoch'] as int?,
      day: json['day'] == null
          ? null
          : Day.fromJson(json['day'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ForecastdayToJson(_$_Forecastday instance) =>
    <String, dynamic>{
      'date_epoch': instance.dateEpoch,
      'day': instance.day,
    };
