/*
 * Created by Kyle Fuehri
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  factory Location({
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    @JsonKey(name: 'tz_id') String? tzId,
    @JsonKey(name: 'localtime_epoch') int? localtimeEpoch,
    String? localtime,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}
