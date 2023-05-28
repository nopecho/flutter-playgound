import 'package:flutter_playgound/domain/auth/use_case/login_use_case.dart';
import 'package:flutter_playgound/domain/auth/use_case/save_auth_use_case.dart';

class AuthUseCases {
  final LoginUseCase login;
  final SaveAuthUseCase saveAuth;

  AuthUseCases({
    required this.login,
    required this.saveAuth
  });
}