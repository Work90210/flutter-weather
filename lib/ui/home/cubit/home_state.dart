/*
 * Created by Kyle Fuehri
 */

part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = HomeLoadingState;
  const factory HomeState.loaded() = HomeLoadedState;
  const factory HomeState.loadFailed() = HomeLoadFailedState;
}
