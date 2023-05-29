import 'package:flutter_playgound/domain/auth/use_case/check_login_use_case.dart';
import 'package:flutter_playgound/domain/auth/use_case/get_login_user_id_use_case.dart';
import 'package:flutter_playgound/domain/auth/use_case/login_use_case.dart';
import 'package:flutter_playgound/domain/auth/use_case/save_auth_use_case.dart';

class AuthUseCases {
  final LoginUseCase login;
  final SaveAuthUseCase saveAuth;
  final CheckLoginUseCase checkLogin;
  final GetLoginUserIdUseCase getLoginUserId;

  AuthUseCases({
    required this.login,
    required this.saveAuth,
    required this.checkLogin,
    required this.getLoginUserId,
  });
}