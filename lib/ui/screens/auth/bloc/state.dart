class AuthState {
  final String email;
  final String password;

  final bool isSignUp;

  AuthState({
    this.email = '',
    this.password = '',
    this.isSignUp = false,
  });

  final _emailRegex = RegExp(r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])');

  bool get isEmailValid => email.isNotEmpty && _emailRegex.hasMatch(email);
  bool get isPasswordValid => password.length >= 8;

  bool get isButtonValid => isEmailValid && isPasswordValid;

  AuthState copyWith({
    String? email,
    String? password,
    bool? isSignUp,
  }) {
    return AuthState(
      email: email ?? this.email,
      password: password ?? this.password,
      isSignUp: isSignUp ?? this.isSignUp,
    );
  }
}
