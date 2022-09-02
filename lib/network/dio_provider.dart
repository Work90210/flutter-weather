/*
 * Created by Kyle Fuehri
 */

import 'package:dio/dio.dart';
import 'package:flutter_weather/constants.dart';
import 'package:flutter_weather/network/network_response.dart';

enum NetworkRequestType {
  delete,
  get,
  patch,
  post,
  put,
}

class DioClient {
  static final DioClient _instance = DioClient._();
  static DioClient get instance => _instance;

  late Dio _dio;

  int timeoutInSeconds = 10;

  DioClient._() {
    _dio = Dio();

    _dio.options.connectTimeout =
        timeoutInSeconds * 1000; // Time before cancelling connection attempt
    _dio.options.sendTimeout = timeoutInSeconds * 1000; // Time before cancelling send attempt
    _dio.options.receiveTimeout = timeoutInSeconds * 1000; // Time before cancelling get attempt

    _dio.interceptors.addAll([_interceptors()]);
  }

  // API URL from app constants folder
  final String baseURL = AppConstants.API_URL;

  Future<NetworkResponseModel> delete({
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    bool useDefaultHeaders = true,
    bool useDefaultQueryParams = true,
  }) {
    return _performRequest(
      type: NetworkRequestType.delete,
      url: url,
      useDefaultHeaders: useDefaultHeaders,
      useDefaultQueryParams: useDefaultQueryParams,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  Future<NetworkResponseModel> get({
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    bool useDefaultHeaders = true,
    bool useDefaultQueryParams = true,
  }) {
    return _performRequest(
      type: NetworkRequestType.get,
      url: baseURL + url,
      useDefaultHeaders: useDefaultHeaders,
      useDefaultQueryParams: useDefaultQueryParams,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  Future<NetworkResponseModel> patch({
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    dynamic body,
    bool useDefaultHeaders = true,
    bool useDefaultQueryParams = true,
  }) {
    return _performRequest(
      type: NetworkRequestType.patch,
      url: baseURL + url,
      useDefaultHeaders: useDefaultHeaders,
      useDefaultQueryParams: useDefaultQueryParams,
      queryParameters: queryParameters,
      headers: headers,
      body: body,
    );
  }

  Future<NetworkResponseModel> post({
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    dynamic body,
    bool useDefaultHeaders = true,
    bool useDefaultQueryParams = true,
  }) {
    return _performRequest(
      type: NetworkRequestType.post,
      url: baseURL + url,
      useDefaultHeaders: useDefaultHeaders,
      useDefaultQueryParams: useDefaultQueryParams,
      queryParameters: queryParameters,
      headers: headers,
      body: body,
    );
  }

  Future<NetworkResponseModel> put({
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    dynamic body,
    bool useDefaultHeaders = true,
    bool useDefaultQueryParams = true,
  }) {
    return _performRequest(
      type: NetworkRequestType.put,
      url: baseURL + url,
      useDefaultHeaders: useDefaultHeaders,
      useDefaultQueryParams: useDefaultQueryParams,
      queryParameters: queryParameters,
      headers: headers,
      body: body,
    );
  }

  Future<NetworkResponseModel> _performRequest({
    required NetworkRequestType type,
    required String url,
    required bool useDefaultHeaders,
    required bool useDefaultQueryParams,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    dynamic body,
  }) async {
    final requestTypeString = networkRequestTypeToString(type);

    // Headers
    headers = headers ?? {};

    // Query Parameters
    queryParameters = queryParameters ?? {};

// TODO: Remove this when done
    print("REQUEST [$requestTypeString] => $url");

    Response? response;

    try {
      response = await _dio.request(
        url,
        data: body,
        queryParameters: queryParameters,
        options: Options(
          method: requestTypeString,
          headers: headers,
          contentType: type == NetworkRequestType.post || type == NetworkRequestType.put
              ? Headers.formUrlEncodedContentType
              : null,
        ),
      );
    } on DioError catch (exception) {
      response = exception.response;
    }

    final networkResponse = NetworkResponseModel.fromResponse(response);

// TODO: Remove this when done
    print("RESPONSE [${networkResponse.statusCode}] => $url:");
    print("${networkResponse.data}");

    return networkResponse;
  }

  /// Used to monitor network performance and log events as they happen
  static InterceptorsWrapper _interceptors() {
    return InterceptorsWrapper(
      onRequest: (RequestOptions options, handler) async {
        return handler.next(options);
      },
      onResponse: (Response response, handler) async {
        return handler.next(response);
      },
      onError: (DioError e, handler) async {
        return handler.next(e);
      },
    );
  }

  /// Used to convert enum to string for printing purposes
  String networkRequestTypeToString(NetworkRequestType networkRequestType) {
    switch (networkRequestType) {
      case NetworkRequestType.delete:
        return 'DELETE';
      case NetworkRequestType.get:
        return 'GET';
      case NetworkRequestType.patch:
        return 'PATCH';
      case NetworkRequestType.post:
        return 'POST';
      case NetworkRequestType.put:
        return 'PUT';
    }
  }
}
