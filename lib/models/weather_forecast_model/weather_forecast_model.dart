/*
 * Created by Kyle Fuehri
 */

import 'package:flutter_weather/models/weather_forecast_model/condition.dart';
import 'package:flutter_weather/models/weather_forecast_model/day.dart';
import 'package:flutter_weather/models/weather_forecast_model/forecastday.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'current.dart';
import 'forecast.dart';
import 'location.dart';

part 'weather_forecast_model.freezed.dart';
part 'weather_forecast_model.g.dart';

@freezed
class WeatherForecastModel with _$WeatherForecastModel {
  const WeatherForecastModel._();
  factory WeatherForecastModel({
    Location? location,
    Current? current,
    Forecast? forecast,
  }) = _WeatherForecastModel;

  double get tempInCelcius => current!.tempC!;
  double get tempInFarenheit => current!.tempF!;
  Condition get currenCondition => current!.condition!;
  List<Forecastday> get listOfForecastDays => forecast!.forecastday!;

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastModelFromJson(json);
}
