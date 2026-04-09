class UserRepositoryImpl implements UserRepository {
  final ApiClient apiClient;

  UserRepositoryImpl({required this.apiClient});

  @override
  Future<List<User>> getUsers() async {
    final data = await apiClient.getUsers();
    return data.map((e) => UserModel.fromJson(e)).toList();
  }

  @override
  Future<void> login(String email, String password) {
    return apiClient.login(email, password);
  }
}
