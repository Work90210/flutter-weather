/*
 * Created by Kyle Fuehri
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'condition.freezed.dart';
part 'condition.g.dart';

@freezed
class Condition with _$Condition {
  factory Condition({
    String? text,
    String? icon,
    int? code,
  }) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
}
