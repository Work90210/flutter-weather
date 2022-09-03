/*
 * Created by Kyle Fuehri
 */

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/models/weather_forecast_model/condition.dart';
import 'package:flutter_weather/models/weather_forecast_model/forecastday.dart';
import 'package:flutter_weather/models/weather_forecast_model/weather_forecast_model.dart';
import 'package:flutter_weather/repositories/weather_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final WeatherRepository weatherRepository;

  HomeCubit({
    required this.weatherRepository,
  }) : super(const HomeState.loading()) {
    _init();
  }

  void _init({String? location}) async {
    // Perform the API request
    WeatherForecastModel? weather = await weatherRepository.getWeather(location ?? "London");

    // If the request comes back null, emit load failed
    if (weather == null) {
      emit(const HomeState.loadFailed());
    } else {
      // Create new list for forevase
      List<Forecastday> forecastList = [];
      // Add list of forecast from API
      forecastList.addAll(weather.listOfForecastDays);
      // Remove the first item from the list as its the current  day
      List<Forecastday> firstIndexRemovedForecastList = forecastList..removeAt(0);

      // If the request is not null, then emit loaded
      emit(HomeState.loaded(
        currentCountry: weather.currentCountry, // Country name
        currentName: weather.currentName, // City name
        currentTemp: weather.tempInCelcius, // Tempreture in celcius
        fiveDayForeCast:
            firstIndexRemovedForecastList, // A list of weather for the next 5 days in the current location
        currentCondition: weather
            .currentCondition, // What the weather is like currently. eg: Rainy, cloudy, winndy, etc.
      ));
    }
  }

  /// Search for the weather at a new location (City or Country)
  /// Also used to reload the page
  void searchNewLocationOrReload({String? newLocation}) {
    emit(const HomeState.loading());

    // Run the API request again with the new location
    _init(location: newLocation);
  }
}
