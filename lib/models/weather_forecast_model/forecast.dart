/*
 * Created by Kyle Fuehri
 */

import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecastday.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
class Forecast with _$Forecast {
  factory Forecast({
    List<Forecastday>? forecastday,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);
}
