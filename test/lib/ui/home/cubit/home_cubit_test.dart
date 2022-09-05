/*
 * Created by Kyle Fuehri
 */

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weather/models/weather_forecast_model/condition.dart';
import 'package:flutter_weather/models/weather_forecast_model/current.dart';
import 'package:flutter_weather/models/weather_forecast_model/day.dart';
import 'package:flutter_weather/models/weather_forecast_model/forecast.dart';
import 'package:flutter_weather/models/weather_forecast_model/forecastday.dart';
import 'package:flutter_weather/models/weather_forecast_model/location.dart';
import 'package:flutter_weather/models/weather_forecast_model/weather_forecast_model.dart';
import 'package:flutter_weather/repositories/weather_repository.dart';
import 'package:flutter_weather/ui/home/cubit/home_cubit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_cubit_test.mocks.dart';

@GenerateMocks([WeatherRepository])
main() {
  MockWeatherRepository weatherRepository = MockWeatherRepository();

  // Response mock data
  final WeatherForecastModel weather = WeatherForecastModel(
    location: Location(
      name: 'London',
      region: 'City of London, Greater London',
      country: 'United Kingdom',
    ),
    current: Current(
      tempC: 21,
      tempF: 69.8,
      condition: Condition(
        text: 'Sunny with a chance of meatballs',
        icon: '//cdn.weatherapi.com/weather/64x64/day/113.png',
      ),
    ),
    forecast: Forecast(
      forecastday: [
        Forecastday(
          dateEpoch: 1662249601,
          day: Day(
            maxtempC: 24.0,
            mintempC: 17.4,
            avgtempC: 20.5,
            condition: Condition(
                text: 'Partly cloudy', icon: '//cdn.weatherapi.com/weather/64x64/day/116.png'),
          ),
        ),
        Forecastday(
          dateEpoch: 1662249602,
          day: Day(
            maxtempC: 24.0,
            mintempC: 17.4,
            avgtempC: 20.5,
            condition: Condition(
                text: 'Partly cloudy', icon: '//cdn.weatherapi.com/weather/64x64/day/116.png'),
          ),
        ),
        Forecastday(
          dateEpoch: 1662249603,
          day: Day(
            maxtempC: 24.0,
            mintempC: 17.4,
            avgtempC: 20.5,
            condition: Condition(
                text: 'Partly cloudy', icon: '//cdn.weatherapi.com/weather/64x64/day/116.png'),
          ),
        ),
        Forecastday(
          dateEpoch: 1662249604,
          day: Day(
            maxtempC: 24.0,
            mintempC: 17.4,
            avgtempC: 20.5,
            condition: Condition(
                text: 'Partly cloudy', icon: '//cdn.weatherapi.com/weather/64x64/day/116.png'),
          ),
        ),
        Forecastday(
          dateEpoch: 1662249605,
          day: Day(
            maxtempC: 24.0,
            mintempC: 17.4,
            avgtempC: 20.5,
            condition: Condition(
                text: 'Partly cloudy', icon: '//cdn.weatherapi.com/weather/64x64/day/116.png'),
          ),
        ),
        Forecastday(
          dateEpoch: 1662249606,
          day: Day(
            maxtempC: 24.0,
            mintempC: 17.4,
            avgtempC: 20.5,
            condition: Condition(
                text: 'Partly cloudy', icon: '//cdn.weatherapi.com/weather/64x64/day/116.png'),
          ),
        ),
      ],
    ),
  );

  // Create new list for forecast
  List<Forecastday> forecastList = [];

  // Add list of forecast from API
  forecastList.addAll(weather.listOfForecastDays);

  // Remove the first item from the list as its the current day
  List<Forecastday> firstIndexRemovedForecastList = forecastList..removeAt(0);

  group('HomeCubit passed', () {
    test('[HomeLoadingState] => [HomeLoadedState]', () {
      late HomeCubit homeCubit = HomeCubit(weatherRepository: weatherRepository);

      // Gets called in place of actual HTTP request
      when(weatherRepository.getWeather(any)).thenAnswer(
        (_) async => Future.value(weather),
      );

      // Init
      homeCubit.init();

      // What to expect once init has been called
      expect(
          HomeState.loaded(
            currentCountry: weather.currentCountry,
            currentName: weather.currentName,
            currentTemp: weather.tempInCelcius,
            fiveDayForeCast: firstIndexRemovedForecastList,
            currentCondition: weather.currentCondition,
          ),
          HomeState.loaded(
            currentCountry: weather.currentCountry,
            currentName: weather.currentName,
            currentTemp: weather.tempInCelcius,
            fiveDayForeCast: firstIndexRemovedForecastList,
            currentCondition: weather.currentCondition,
          ));
    });

    test('[HomeLoadingState] => [HomeLoadFailedState]', () {
      late HomeCubit homeCubit = HomeCubit(weatherRepository: weatherRepository);

      // Gets called in place of actual HTTP request
      when(weatherRepository.getWeather(any)).thenAnswer(
        (_) async => Future.value('Something went wrong. Please try again'),
      );

      // Init
      homeCubit.init();

      // What to expect once init has been called
      expect(const HomeState.loadFailed(), const HomeState.loadFailed());
    });

    test(
      '[HomeLoadingState] => [HomeLoadFailedState] => [HomeLoadingState] => [HomeLoadedState]',
      () {
        late HomeCubit homeCubit = HomeCubit(weatherRepository: weatherRepository);

        // Gets called in place of actual HTTP request
        when(weatherRepository.getWeather(any))
            .thenAnswer((_) async => Future.value('Something went wrong. Please try again'));

        // Call the home cubit
        homeCubit.init();

        // Make sure the page is starting at loading state
        expect(const HomeState.loading(), const HomeState.loading());

        // Confirm we are in the home load failed state
        expect(const HomeState.loadFailed(), const HomeState.loadFailed());

        // Then we change the URL request
        when(weatherRepository.getWeather(any)).thenAnswer((_) async => Future.value(weather));

        // Now we call the reload method or search method
        homeCubit.searchNewLocationOrReload();

        // What to expect once init has been called
        expect(
          HomeState.loaded(
            currentCountry: weather.currentCountry,
            currentName: weather.currentName,
            currentTemp: weather.tempInCelcius,
            fiveDayForeCast: firstIndexRemovedForecastList,
            currentCondition: weather.currentCondition,
          ),
          HomeState.loaded(
            currentCountry: weather.currentCountry,
            currentName: weather.currentName,
            currentTemp: weather.tempInCelcius,
            fiveDayForeCast: firstIndexRemovedForecastList,
            currentCondition: weather.currentCondition,
          ),
        );
      },
    );

    test(
      'Is Descending or Ascending sorting working',
      () async {
        late HomeCubit homeCubit = HomeCubit(weatherRepository: weatherRepository);

        // Then we change the URL request
        when(weatherRepository.getWeather(any)).thenAnswer((_) async => Future.value(weather));

        // Create new list for forecast
        List<Forecastday> forecastList = [];

        // Add list of forecast from API
        forecastList.addAll(weather.listOfForecastDays);

        // Remove the first item from the list as its the current day
        List<Forecastday> firstIndexRemovedForecastList = forecastList..removeAt(0);

        homeCubit.emit(
          HomeState.loaded(
            currentCountry: weather.currentCountry,
            currentName: weather.currentName,
            currentTemp: weather.tempInCelcius,
            fiveDayForeCast: firstIndexRemovedForecastList,
            currentCondition: weather.currentCondition,
          ),
        );

        // Then we sort the list to descending to use as our test
        List<Forecastday> newList = [];
        newList.addAll(forecastList);

        // Sort the list by date in Descending order
        newList.sort((a, b) => b.dateEpoch!.compareTo(a.dateEpoch!));

        // Now we call the reload method or search method
        homeCubit.changeToDescOrAsc();

        // What to expect once init has been called
        expect(
          HomeState.loaded(
            currentCountry: (homeCubit.state as HomeLoadedState).currentCountry,
            currentName: (homeCubit.state as HomeLoadedState).currentName,
            currentTemp: (homeCubit.state as HomeLoadedState).currentTemp,
            fiveDayForeCast: (homeCubit.state as HomeLoadedState).fiveDayForeCast,
            currentCondition: (homeCubit.state as HomeLoadedState).currentCondition,
            isAscending: (homeCubit.state as HomeLoadedState).isAscending,
          ),
          HomeState.loaded(
            currentCountry: weather.currentCountry,
            currentName: weather.currentName,
            currentTemp: weather.tempInCelcius,
            fiveDayForeCast: newList,
            currentCondition: weather.currentCondition,
            isAscending: false,
          ),
        );
      },
    );
  });
}
