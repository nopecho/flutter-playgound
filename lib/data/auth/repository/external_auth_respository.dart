import 'package:flutter_playgound/domain/auth/models/auth.dart';
import 'package:flutter_playgound/domain/auth/models/login.dart';
import 'package:flutter_playgound/domain/auth/repository/auth_repository.dart';
import 'package:flutter_playgound/domain/result.dart';

class ExternalAuthRepository extends AuthRepository {

  @override
  Future<Result<Auth>> login(Login login) {
    // TODO: implement login
    throw UnimplementedError();
  }
}