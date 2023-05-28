import 'package:dio/dio.dart';
import 'package:flutter_playgound/config/auth_provider_config.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future<void> setupAppConfig() async {
  const FlutterSecureStorage storage = FlutterSecureStorage();
  final Dio dio = Dio(
    BaseOptions(
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json
    )
  );

  await setAuthProviderConfig(storage, dio);
}