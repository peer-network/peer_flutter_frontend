// dio_client.dart

import 'package:dio/dio.dart';
import 'package:flutter_dio_http_cache/dio_http_cache.dart';
import 'package:peer_app/presentation/whitelabel/endpoints.dart';

class DioClient {
  late Dio _dio;
  static final DioClient _instance = DioClient._internal();
  final BaseOptions _options = BaseOptions(
    baseUrl: ApiEndpoints.baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  factory DioClient() {
    return _instance;
  }

  DioClient._internal() {
    _dio = Dio(_options);
    _dio.interceptors.add(
      DioCacheManager(CacheConfig()).interceptor,
    );

    // Add the LogInterceptor to log request and response details
    // _dio.interceptors.add(LogInterceptor(
    //   request: false,
    //   requestBody: false,
    //   requestHeader: false,
    //   responseHeader: false,
    //   responseBody: false,
    //   error: true,
    // ));

    _dio.options.headers['Accept'] = 'application/json';
  }

  void updateHeaders(Map<String, dynamic> headers) {
    _dio.options.headers.addAll(headers);
  }

  Future<Response> get(String path, {Map<String, dynamic>? params}) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: params,
        options: buildCacheOptions(const Duration(days: 7)),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> post(String path, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        options: buildCacheOptions(const Duration(days: 7)),
      );
      return response;
    } catch (e) {
      print("error in post request: $e");
      rethrow;
    }
  }
}
