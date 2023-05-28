abstract class SecureRepository {
  Future<void> write(String key, String value);
}