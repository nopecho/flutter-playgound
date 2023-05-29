abstract class SecureRepository {
  Future<void> write(String key, String value);
  Future<String?> read(String key);
}