import 'package:dio/dio.dart';
import 'package:flutter_playgound/config/auth_provider_config.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

bool isProduction() => const bool.fromEnvironment('dart.vm.product');

Future<void> setupAppConfig() async {
  await dotenv.load(fileName: isProduction() ? 'assets/.env.prod' : 'assets/.env.dev');

  const FlutterSecureStorage storage = FlutterSecureStorage();
  final Dio dio = Dio(
    BaseOptions(
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      baseUrl: dotenv.get('BACKEND_BASE_URL')
    )
  );

  await setAuthProviderConfig(storage, dio);
}
