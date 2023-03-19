import 'package:dio/dio.dart';
import 'package:yowl_app/app/app_config.dart';

abstract class ApiService {
  final Dio _dio;

  ApiService(
    Dio dio,
  ) : _dio = dio {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: _defaultRequestInterceptor,
        onError: _defaultErrorInterceptor,
      ),
    );
  }

  static const authorizationHeader = 'Authorization';

  Future<void> _defaultRequestInterceptor(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.baseUrl = AppConfig().baseUrl;
    await _appendAuthorizationHeader(options);
    return handler.next(options);
  }

  Future<void> _appendAuthorizationHeader(RequestOptions options) async {
    final header = 'Bearer ${AppConfig().apiKey}';
    options.headers.addAll({
      authorizationHeader: header,
    });
  }

  Future<void> _defaultErrorInterceptor(
      DioError error, ErrorInterceptorHandler handler) async {
    return handler.next(error);
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? params,
    Map<String, dynamic>? headers,
  }) {
    return _dio.get(
      path,
      queryParameters: params,
      options: headers != null ? Options(headers: headers) : null,
    );
  }
}
