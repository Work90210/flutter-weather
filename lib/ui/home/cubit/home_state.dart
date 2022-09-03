/*
 * Created by Kyle Fuehri
 */

part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = HomeLoadingState;

  const factory HomeState.loaded({
    required String currentCountry,
    required String currentName,
    required double currentTemp,
    required List<Forecastday> fiveDayForeCast,
    required Condition currentCondition,
  }) = HomeLoadedState;

  const factory HomeState.loadFailed() = HomeLoadFailedState;
}
