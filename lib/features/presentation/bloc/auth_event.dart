abstract class AuthEvent {}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;

  LoginEvent(this.email, this.password);
}

class LoadUsersEvent extends AuthEvent {}

class LogoutEvent extends AuthEvent {}
