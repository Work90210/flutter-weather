/*
 * Created by Kyle Fuehri
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter_weather/constants.dart';
import 'package:flutter_weather/models/weather_forecast_model/weather_forecast_model.dart';
import 'package:flutter_weather/network/dio_provider.dart';

class WeatherRepository {
  WeatherRepository();

  Future getWeather(String location) async {
    try {
      final result = await DioClient.instance.get(
        url: '/forecast.json',
        queryParameters: {
          "key": AppConstants.WEATHER_API_KEY,
          "q": location,
          "days": 6,
        },
      );

      if (!result.isSuccessful) {
        if (result.data.toString().contains("1006")) {
          throw ErrorDescription('The location provided was not found. Please try again');
        } else {
          throw ErrorDescription('There seems to be an internal error. Please contact support');
        }
      }

      final jsonList = WeatherForecastModel.fromJson(result.data);
      return jsonList;
    } catch (e) {
      return e;
    }
  }
}
