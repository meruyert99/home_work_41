abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthAuthenticated extends AuthState {
  final List<User> users;

  AuthAuthenticated(this.users);
}

class AuthLoggedOut extends AuthState {}
