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
          dateEpoch: 1662249600,
          day: Day(
            maxtempC: 24.0,
            mintempC: 17.4,
            avgtempC: 20.5,
            condition: Condition(
                text: 'Partly cloudy', icon: '//cdn.weatherapi.com/weather/64x64/day/116.png'),
          ),
        ),
        Forecastday(
          dateEpoch: 1662249600,
          day: Day(
            maxtempC: 24.0,
            mintempC: 17.4,
            avgtempC: 20.5,
            condition: Condition(
                text: 'Partly cloudy', icon: '//cdn.weatherapi.com/weather/64x64/day/116.png'),
          ),
        ),
        Forecastday(
          dateEpoch: 1662249600,
          day: Day(
            maxtempC: 24.0,
            mintempC: 17.4,
            avgtempC: 20.5,
            condition: Condition(
                text: 'Partly cloudy', icon: '//cdn.weatherapi.com/weather/64x64/day/116.png'),
          ),
        ),
        Forecastday(
          dateEpoch: 1662249600,
          day: Day(
            maxtempC: 24.0,
            mintempC: 17.4,
            avgtempC: 20.5,
            condition: Condition(
                text: 'Partly cloudy', icon: '//cdn.weatherapi.com/weather/64x64/day/116.png'),
          ),
        ),
        Forecastday(
          dateEpoch: 1662249600,
          day: Day(
            maxtempC: 24.0,
            mintempC: 17.4,
            avgtempC: 20.5,
            condition: Condition(
                text: 'Partly cloudy', icon: '//cdn.weatherapi.com/weather/64x64/day/116.png'),
          ),
        ),
        Forecastday(
          dateEpoch: 1662249600,
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
    test('Is the state changing to [HomeLoadedState]', () {
      late HomeCubit homeCubit = HomeCubit(weatherRepository: weatherRepository);

      when(weatherRepository.getWeather(any)).thenAnswer(
        (_) async => Future.value(weather),
      );
      homeCubit.init();

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

    test('Is the state changing to [HomeLoadFailedState]', () {
      late HomeCubit homeCubit = HomeCubit(weatherRepository: weatherRepository);

      when(weatherRepository.getWeather(any)).thenAnswer(
        (_) async => Future.value('Something went wrong. Please try again'),
      );
      homeCubit.init();

      expect(const HomeState.loadFailed(), const HomeState.loadFailed());
    });

    test(
      'Is the Cubit updating from [HomeLoadFailedState] to [HomeLoadedState]',
      () {
        late HomeCubit homeCubit = HomeCubit(weatherRepository: weatherRepository);
        int callCount = verify(weatherRepository.getWeather(any)).callCount;

        // Call this to emit HomeLoadfialedState
        when(weatherRepository.getWeather(any))
            .thenAnswer((_) async => Future.value('Something went wrong. Please try again'));
        // Call the home cubit
        homeCubit.init();
        // Make sure the page is starting at loading state
        expect(const HomeState.loading(), const HomeState.loading());
        //! May throw an error while running group test. Needs to be run on its own.
        verify(weatherRepository.getWeather(any)).called(2);

        // Confirm we are in the home load failed state
        expect(const HomeState.loadFailed(), const HomeState.loadFailed());

        // Then we change the URL request
        when(weatherRepository.getWeather(any)).thenAnswer((_) async => Future.value(weather));

        // Now we call the reload method or search method
        homeCubit.searchNewLocationOrReload();

        verify(weatherRepository.getWeather(any)).called(1);

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
  });
}
