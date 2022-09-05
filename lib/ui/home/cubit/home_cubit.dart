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
    init();
  }

  void init({String? location}) async {
    // Perform the API request
    final response = await weatherRepository.getWeather(location ?? "London");

    // Check if the response is the weather forecast model and proceed
    if (response is WeatherForecastModel) {
      // Create new list for forecast
      List<Forecastday> forecastList = [];

      // Add list of forecast from API
      forecastList.addAll(response.listOfForecastDays);

      // Remove the first item from the list as its the current day
      List<Forecastday> firstIndexRemovedForecastList = forecastList..removeAt(0);

      emit(HomeState.loaded(
        currentCountry: response.currentCountry, // Country name
        currentName: response.currentName, // City name
        currentTemp: response.tempInCelcius, // Tempreture in celcius
        fiveDayForeCast:
            firstIndexRemovedForecastList, // A list of weather for the next 5 days in the current location
        currentCondition: response
            .currentCondition, // What the weather is like currently. eg: Rainy, cloudy, winndy, etc.
      ));
    } else {
      // Emit failed
      emit(HomeState.loadFailed(errorMessage: response.toString()));
    }
  }

  void changeToDescOrAsc() {
    // Check if the forecast is Ascending
    // If the forecast is ascending, then we change it to descending

    if ((state as HomeLoadedState).isAscending) {
      // Get the list from the state
      List<Forecastday> newList = [];
      newList.addAll((state as HomeLoadedState).fiveDayForeCast);

      // Sort the list by date in Descending order
      newList.sort((a, b) => b.dateEpoch!.compareTo(a.dateEpoch!));

      emit(HomeState.loaded(
        currentCountry: (state as HomeLoadedState).currentCountry,
        currentName: (state as HomeLoadedState).currentName,
        currentTemp: (state as HomeLoadedState).currentTemp,
        fiveDayForeCast: newList, // New list here
        currentCondition: (state as HomeLoadedState).currentCondition,
        isAscending: false,
      ));
    } else {
      // Get the list from the state
      List<Forecastday> newList = [];
      newList.addAll((state as HomeLoadedState).fiveDayForeCast);

      // Sort the list by date in Descending order
      newList.sort((a, b) => a.dateEpoch!.compareTo(b.dateEpoch!));

      emit(HomeState.loaded(
        currentCountry: (state as HomeLoadedState).currentCountry,
        currentName: (state as HomeLoadedState).currentName,
        currentTemp: (state as HomeLoadedState).currentTemp,
        fiveDayForeCast: newList, // New list here
        currentCondition: (state as HomeLoadedState).currentCondition,
        isAscending: true,
      ));
    }
  }

  /// Search for the weather at a new location (City or Country)
  /// Also used to reload the page
  void searchNewLocationOrReload({String? newLocation}) {
    emit(const HomeState.loading());

    // Run the API request again with the new location
    init(location: newLocation);
  }
}
