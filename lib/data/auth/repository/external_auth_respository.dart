import 'dart:developer';

import 'package:flutter_playgound/data/auth/data_source/external/auth_api.dart';
import 'package:flutter_playgound/domain/auth/models/auth.dart';
import 'package:flutter_playgound/domain/auth/models/login.dart';
import 'package:flutter_playgound/domain/auth/repository/auth_repository.dart';
import 'package:flutter_playgound/domain/result.dart';

class ExternalAuthRepository extends AuthRepository {

  AuthApi authApi;

  ExternalAuthRepository(this.authApi);

  @override
  Future<Result<Auth>> login(Login login) async {
    try {
      Auth auth = await authApi.login(login);
      return Result.success(auth);
    } catch(e) {
      return const Result.error("error!");
    }
  }
}