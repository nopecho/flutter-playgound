import 'package:flutter_playgound/domain/auth/repository/secure_repository.dart';

class InternalSecureRepository extends SecureRepository {

  @override
  Future<void> write(String key, String value) {
    // TODO: implement write
    throw UnimplementedError();
  }
}