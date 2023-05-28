import 'package:flutter_playgound/domain/auth/models/auth.dart';
import 'package:flutter_playgound/domain/auth/models/login.dart';
import 'package:flutter_playgound/domain/result.dart';

abstract class AuthRepository {
  Future<Result<Auth>> login(Login login);
}