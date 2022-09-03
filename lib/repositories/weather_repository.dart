/*
 * Created by Kyle Fuehri
 */

import 'package:flutter/material.dart';
import 'package:flutter_weather/constants.dart';
import 'package:flutter_weather/models/weather_forecast_model/weather_forecast_model.dart';
import 'package:flutter_weather/network/dio_provider.dart';

class WeatherRepository {
  WeatherRepository();

  Future<WeatherForecastModel?> getWeather() async {
    try {
      final result = await DioClient.instance.get(
        url: '/forecast.json',
        // TODO: Make the country dynamic
        queryParameters: {
          "key": AppConstants.WEATHER_API_KEY,
          "q": "London",
          "days": 5,
        },
      );

      if (!result.isSuccessful) {
        throw ErrorDescription('TODO: Error getting help');
      }

      final jsonList = WeatherForecastModel.fromJson(result.data);
      return jsonList;
    } catch (e) {
      return null;
    }
  }
}
