import 'package:flutter_playgound/domain/auth/models/login_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {

  const factory LoginEvent.loginTry(LoginMethod method, String? email, String? password, String? token) = LoginTry;
}