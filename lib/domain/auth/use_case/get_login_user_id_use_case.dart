import 'package:flutter_playgound/domain/auth/repository/secure_repository.dart';
import 'package:flutter_playgound/domain/use_case.dart';
import 'package:get/get_connect/http/src/exceptions/exceptions.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class GetLoginUserIdUseCase extends UseCase<String, void> {

  SecureRepository repository;

  GetLoginUserIdUseCase(this.repository);

  @override
  Future<String> call(void params) async {
    var token = await repository.read("custom_jwt");

    if(token == null) {
      return throw UnauthorizedException();
    }

    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    return decodedToken['id'];
  }
}