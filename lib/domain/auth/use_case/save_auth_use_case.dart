import 'package:flutter_playgound/domain/auth/models/auth.dart';
import 'package:flutter_playgound/domain/auth/repository/secure_repository.dart';
import 'package:flutter_playgound/domain/use_case.dart';

class SaveAuthUseCase extends UseCase<void, Auth> {

  SecureRepository repository;

  SaveAuthUseCase(this.repository);

  @override
  Future<void> call(Auth params) async {
    await repository.write("key", params.jwt);
  }
}