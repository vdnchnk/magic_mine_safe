abstract class AuthEvent {}

class LoginPressed implements AuthEvent {}

class ChangeEmail implements AuthEvent {
  final String email;
  ChangeEmail(this.email);
}

class ChangePassword implements AuthEvent {
  final String password;
  ChangePassword(this.password);
}

class ChangeSignUp implements AuthEvent {}
