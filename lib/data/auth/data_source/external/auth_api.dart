import 'package:flutter_playgound/config/auth_provider_config.dart';
import 'package:flutter_playgound/domain/auth/models/auth.dart';
import 'package:flutter_playgound/domain/auth/models/login.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'auth_api.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class AuthApi {
  factory AuthApi(Dio dio) = _AuthApi;

  @POST("/v1/login")
  Future<Auth> login(@Body() Login login);
}