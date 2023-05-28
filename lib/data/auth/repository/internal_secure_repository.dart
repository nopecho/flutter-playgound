import 'package:flutter_playgound/data/auth/data_source/internal/secure_storage.dart';
import 'package:flutter_playgound/domain/auth/repository/secure_repository.dart';

class InternalSecureRepository extends SecureRepository {

  SecureStorage storage;

  InternalSecureRepository(this.storage);

  @override
  Future<void> write(String key, String value) async {
    await storage.write(key, value);
  }
}