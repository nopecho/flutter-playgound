import 'package:flutter_playgound/domain/auth/repository/secure_repository.dart';
import 'package:flutter_playgound/domain/use_case.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class CheckLoginUseCase extends UseCase<bool, void> {

  SecureRepository repository;

  CheckLoginUseCase(this.repository);

  @override
  Future<bool> call(void params) async {
    var token = await repository.read("custom_jwt");

    if(token == null) {
      return false;
    }

    return !JwtDecoder.isExpired(token);
  }
}