import 'package:application_flutter/common/global_configs.dart';
import 'package:application_flutter/common/storage/app_prefs.dart';
import 'package:application_flutter/get_it.dart';
import 'package:application_flutter/models/base/response/error_response.dart';
import 'package:application_flutter/models/user/request/login_request.dart';
import 'package:application_flutter/models/user/response/login_response.dart';
import 'package:application_flutter/networks/rest_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DataRepository implements RestClient {
  final dio = Dio();

  RestClient? client;
  final appPrefs = getIt<AppPref>();
  DataRepository() {
    if (kDebugMode) {
      dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
    }

    dio.options.contentType = Headers.jsonContentType;
    dio.options.responseType = ResponseType.json;
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers['Accept'] = 'application/json';

    // /// Add middleware Authorization
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handle) async {
      final token = (await appPrefs.getToken())?.resultObj ?? '';
      options.headers['Authorization'] = 'Bearer $token';
      options.headers['Content-Type'] = 'application/json';
      options.headers['Accept'] = 'application/json';
      return handle.next(options);
    }));

    /// Middleware  Error Handling
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error1, handle) {
          final errorResponse = ErrorResponse.fromJson(error1.response?.data);
          // ignore: deprecated_member_use
          final error = DioError(
              requestOptions: RequestOptions(path: ''),
              error: errorResponse.toJson());
          return handle.reject(error);
        },
      ),
    );
    client = RestClient(dio, baseUrl: GlobalConfigs.kBaseUrl);
  }
  @override
  Future<LoginResponse> login({required LoginRequest request}) {
    return client!.login(request: request);
  }
}
