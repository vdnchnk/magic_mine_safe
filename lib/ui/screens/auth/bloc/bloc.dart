import 'package:explocive_detection/ui/router/nav_keys.dart';
import 'package:explocive_detection/ui/router/nav_router.dart';
import 'package:explocive_detection/ui/screens/auth/bloc/event.dart';
import 'package:explocive_detection/ui/screens/auth/bloc/state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final NavRouter _navRouter;
  AuthBloc(this._navRouter) : super(AuthState()) {
    on<LoginPressed>(onLoginPressed);

    on<ChangeEmail>(
      (event, emit) {
        emit(state.copyWith(email: event.email));
      },
    );
    on<ChangePassword>(
      (event, emit) {
        emit(state.copyWith(password: event.password));
      },
    );
    on<ChangeSignUp>((event, emit) {
      emit(state.copyWith(
        isSignUp: true,
        email: '',
        password: '',
      ));
    });
  }

  Future<void> onLoginPressed(LoginPressed event, Emitter<AuthState> emit) async {
    if (state.isSignUp) {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: state.email,
        password: state.password,
      );
      _navRouter.go(NavKeys.home);
    } else {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: state.email,
        password: state.password,
      );
      _navRouter.go(NavKeys.home);
    }
  }

  void eventEmail(String email) => add(ChangeEmail(email));

  void eventPassword(String password) => add(ChangePassword(password));

  void eventLogin() => add(LoginPressed());

  void eventSignUp() => add(ChangeSignUp());
}
