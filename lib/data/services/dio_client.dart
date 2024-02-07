// dio_client.dart

import 'package:dio/dio.dart';
import 'package:flutter_dio_http_cache/dio_http_cache.dart';

class DioClient {
  late Dio _dio;
  final BaseOptions _options = BaseOptions(
    baseUrl: 'https://your-api-url.com',
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  DioClient() {
    _dio = Dio(_options);

    _dio.interceptors.add(
      DioCacheManager(CacheConfig()).interceptor,
    );
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
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
