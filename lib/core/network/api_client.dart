abstract class ApiClient {
  Future<List<Map<String, dynamic>>> getUsers();
  Future<void> login(String email, String password);
}
