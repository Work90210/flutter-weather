/*
 * Created by Kyle Fuehri
 */

part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.init() = HomeInitState;
}
