import 'package:dio/dio.dart';
import 'package:flutter_playgound/data/auth/data_source/external/auth_api.dart';
import 'package:flutter_playgound/data/auth/data_source/internal/secure_storage.dart';
import 'package:flutter_playgound/data/auth/repository/external_auth_respository.dart';
import 'package:flutter_playgound/data/auth/repository/internal_secure_repository.dart';
import 'package:flutter_playgound/domain/auth/use_case/auth_use_cases.dart';
import 'package:flutter_playgound/domain/auth/use_case/check_login_use_case.dart';
import 'package:flutter_playgound/domain/auth/use_case/get_login_user_id_use_case.dart';
import 'package:flutter_playgound/domain/auth/use_case/login_use_case.dart';
import 'package:flutter_playgound/domain/auth/use_case/save_auth_use_case.dart';
import 'package:flutter_playgound/ui/pages/login/view_models/login_view_model.dart';
import 'package:flutter_playgound/ui/pages/signup/view_models/signup_view_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

Future<void> setAuthProviderConfig(FlutterSecureStorage storage, Dio dio) async {
  final authApi = AuthApi(dio);
  final secureStorage = SecureStorage(storage);

  final authRepository = ExternalAuthRepository(authApi);
  final secureRepository = InternalSecureRepository(secureStorage);

  final useCases = AuthUseCases(
      login: LoginUseCase(authRepository),
      saveAuth: SaveAuthUseCase(secureRepository),
      checkLogin: CheckLoginUseCase(secureRepository),
      getLoginUserId: GetLoginUserIdUseCase(secureRepository),
  );

  Get.put(LoginViewModel(useCases));
  Get.put(SignUpViewModel());
}