import 'package:flutter_playgound/domain/auth/models/auth.dart';
import 'package:flutter_playgound/domain/auth/models/login.dart';
import 'package:flutter_playgound/domain/auth/models/login_method.dart';
import 'package:flutter_playgound/domain/auth/use_case/auth_use_cases.dart';
import 'package:flutter_playgound/domain/result.dart';
import 'package:flutter_playgound/ui/pages/login/view-models/login_event.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  final AuthUseCases _useCases;

  LoginViewModel(this._useCases);

  void onEvent(LoginEvent event) {
    event.when(
        loginTry: _loginTry
    );
  }

  Future<void> _loginTry(LoginMethod method, String? email, String? password, String? token) async {
    Result<Auth> result = await _useCases.login.call(Login(
        method: method,
        email: email,
        password: password,
        token: token
    ));

    result.when(
        success: (data) async {
          await onLoginSuccess(data);
        },
        error: (error) async {
          await onLoginFail(error);
        }
    );
  }

  Future<void> onLoginSuccess(Auth data) async {
    await _useCases.saveAuth(data);
    Get.toNamed("/");
  }

  Future<void> onLoginFail(String error) async {
    Get.offAllNamed("/signup");
  }
}