// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Day _$$_DayFromJson(Map<String, dynamic> json) => _$_Day(
      maxtempC: (json['maxtemp_c'] as num?)?.toDouble(),
      maxtempF: (json['maxtemp_f'] as num?)?.toDouble(),
      mintempC: (json['mintemp_c'] as num?)?.toDouble(),
      mintempF: (json['mintemp_f'] as num?)?.toDouble(),
      avgtempC: (json['avgtemp_c'] as num?)?.toDouble(),
      avgtempF: (json['avgtemp_f'] as num?)?.toDouble(),
      maxwindMph: (json['maxwind_mph'] as num?)?.toDouble(),
      maxwindKph: (json['maxwind_kph'] as num?)?.toDouble(),
      dailyWillItRain: (json['daily_will_it_rain'] as num?)?.toDouble(),
      dailyChanceOfRain: (json['daily_chance_of_rain'] as num?)?.toDouble(),
      dailyWillItSnow: (json['daily_will_it_snow'] as num?)?.toDouble(),
      dailyChanceOfSnow: (json['daily_chance_of_snow'] as num?)?.toDouble(),
      condition: json['condition'] == null
          ? null
          : Condition.fromJson(json['condition'] as Map<String, dynamic>),
      uv: (json['uv'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DayToJson(_$_Day instance) => <String, dynamic>{
      'maxtemp_c': instance.maxtempC,
      'maxtemp_f': instance.maxtempF,
      'mintemp_c': instance.mintempC,
      'mintemp_f': instance.mintempF,
      'avgtemp_c': instance.avgtempC,
      'avgtemp_f': instance.avgtempF,
      'maxwind_mph': instance.maxwindMph,
      'maxwind_kph': instance.maxwindKph,
      'daily_will_it_rain': instance.dailyWillItRain,
      'daily_chance_of_rain': instance.dailyChanceOfRain,
      'daily_will_it_snow': instance.dailyWillItSnow,
      'daily_chance_of_snow': instance.dailyChanceOfSnow,
      'condition': instance.condition,
      'uv': instance.uv,
    };
