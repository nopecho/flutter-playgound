import 'package:flutter_playgound/domain/auth/models/login_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
class Login with _$Login {

  factory Login({
    required LoginMethod method,
    String? email,
    String? password,
    String? token
  }) = _Login;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}