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
    @Default(true) bool isAscending,
  }) = HomeLoadedState;

  const factory HomeState.loadFailed({
    @Default('Something went wrong. Please try again') String errorMessage,
  }) = HomeLoadFailedState;
}
