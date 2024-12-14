import 'package:explocive_detection/ui/router/nav_keys.dart';
import 'package:explocive_detection/ui/router/nav_router.dart';
import 'package:explocive_detection/ui/screens/home/bloc/event.dart';
import 'package:explocive_detection/ui/screens/home/bloc/state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NavRouter _navRouter;
  HomeBloc(this._navRouter) : super(HomeState()) {
    on<CheckAuthEvent>(onLoginPressed);
    on<LogoutEvent>((event, emit) async {
      await FirebaseAuth.instance.signOut();
      _navRouter.go(NavKeys.auth);
    });
    checkAuth();
  }

  Future<void> onLoginPressed(CheckAuthEvent event, Emitter<HomeState> emit) async {
    try {
      if (FirebaseAuth.instance.currentUser == null) {
        _navRouter.go(NavKeys.auth);
      }
    } on FirebaseAuthException catch (e) {
      // if (e.code == 'user-not-found') {
      //   final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      //     email: state.email,
      //     password: state.password,
      //   );
      // } else if (e.code == 'wrong-password') {
      //   print('Wrong password provided for that user.');
      // }
    }
  }

  void checkAuth() => add(CheckAuthEvent());

  void logOut() => add(LogoutEvent());

  void navReport() => _navRouter.push(NavKeys.addReport);
}
