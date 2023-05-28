import 'package:flutter_playgound/domain/auth/models/auth.dart';
import 'package:flutter_playgound/domain/auth/models/login.dart';
import 'package:flutter_playgound/domain/auth/repository/auth_repository.dart';
import 'package:flutter_playgound/domain/result.dart';
import 'package:flutter_playgound/domain/use_case.dart';

class LoginUseCase extends UseCase<Result<Auth>, Login> {

  AuthRepository repository;

  LoginUseCase(this.repository);

  @override
  Future<Result<Auth>> call(Login params) async {
    return await repository.login(params);
  }
}