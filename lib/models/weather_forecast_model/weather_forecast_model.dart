/*
 * Created by Kyle Fuehri
 */

import 'package:freezed_annotation/freezed_annotation.dart';

import 'current.dart';
import 'forecast.dart';
import 'location.dart';

part 'weather_forecast_model.freezed.dart';
part 'weather_forecast_model.g.dart';

@freezed
class WeatherForecastModel with _$WeatherForecastModel {
  factory WeatherForecastModel({
    Location? location,
    Current? current,
    Forecast? forecast,
  }) = _WeatherForecastModel;

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastModelFromJson(json);
}
