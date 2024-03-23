import 'package:application_flutter/common/global_configs.dart';
import 'package:application_flutter/models/user/request/login_request.dart';
import 'package:application_flutter/models/user/response/login_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: GlobalConfigs.kBaseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  /// repo - auth

  @POST('/Login')
  Future<LoginResponse> login({@Body() required LoginRequest request});
}
