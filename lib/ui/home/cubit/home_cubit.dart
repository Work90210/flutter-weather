/*
 * Created by Kyle Fuehri
 */

import 'package:flutter_bloc/flutter_bloc.dart';
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

  void _init() async {
    WeatherForecastModel? weather = await weatherRepository.getWeather();

    emit(const HomeState.loaded());
  }
}
