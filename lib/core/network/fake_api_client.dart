class FakeApiClient implements ApiClient {
  @override
  Future<List<Map<String, dynamic>>> getUsers() async {
    await Future.delayed(Duration(milliseconds: 300));
    return [
      {"id": 1, "name": "Fake User"}
    ];
  }

  @override
  Future<void> login(String email, String password) async {
    await Future.delayed(Duration(milliseconds: 300));
  }
}
