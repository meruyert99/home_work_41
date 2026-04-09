import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies({bool isTest = false}) {
  getIt.reset();

  if (isTest) {
    getIt.registerLazySingleton<ApiClient>(() => FakeApiClient());
  } else {
    getIt.registerLazySingleton<ApiClient>(() => FakeApiClient()); 
  }

  getIt.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(apiClient: getIt()),
  );
}
