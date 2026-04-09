abstract class UserRepository {
  Future<List<User>> getUsers();
  Future<void> login(String email, String password);
}
