class MockApiClient extends Mock implements ApiClient {}

void main() {
  late MockApiClient mockApi;
  late UserRepository repository;

  setUp(() {
    mockApi = MockApiClient();
    repository = UserRepositoryImpl(apiClient: mockApi);
  });

  test('returns users', () async {
    when(() => mockApi.getUsers()).thenAnswer(
      (_) async => [{"id": 1, "name": "John"}],
    );

    final result = await repository.getUsers();

    expect(result.first.name, "John");
  });
}
