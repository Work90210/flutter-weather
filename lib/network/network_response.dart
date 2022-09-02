/*
 * Created by Kyle Fuehri
 */

import 'package:dio/dio.dart';

class NetworkResponseModel {
  NetworkResponseModel({
    required this.statusCode,
    this.data,
    this.error,
    this.headers,
  });

  factory NetworkResponseModel.fromResponse(Response? response) {
    return NetworkResponseModel(
      statusCode: response?.statusCode ?? -1,
      headers: response?.headers,
      data: response?.data,
    );
  }

  final dynamic data;
  final String? error;
  final Headers? headers;
  final int statusCode;

  bool get isSuccessful => statusCode >= 200 && statusCode < 300;
  bool get isDuplicate => statusCode == 409;
}
