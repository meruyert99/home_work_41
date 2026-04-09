class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserRepository repository;

  AuthBloc(this.repository) : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      await repository.login(event.email, event.password);
      final users = await repository.getUsers();
      emit(AuthAuthenticated(users));
    });

    on<LogoutEvent>((event, emit) {
      emit(AuthLoggedOut());
    });
  }
}
