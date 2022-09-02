/*
 * Created by Kyle Fuehri
 */

import 'package:freezed_annotation/freezed_annotation.dart';

import 'day.dart';

part 'forecastday.freezed.dart';
part 'forecastday.g.dart';

@freezed
class Forecastday with _$Forecastday {
  factory Forecastday({
    @JsonKey(name: 'date_epoch') int? dateEpoch,
    Day? day,
  }) = _Forecastday;

  factory Forecastday.fromJson(Map<String, dynamic> json) => _$ForecastdayFromJson(json);
}
