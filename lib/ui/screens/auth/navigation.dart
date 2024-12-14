import 'package:explocive_detection/ui/router/nav_router_item.dart';
import 'package:explocive_detection/ui/screens/auth/bloc/bloc.dart';
import 'package:explocive_detection/ui/screens/auth/screen.dart';
import 'package:explocive_detection/ui/screens/home/bloc/bloc.dart';
import 'package:explocive_detection/ui/screens/home/screen.dart';
import 'package:flutter/src/material/page.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/src/state.dart';

class AuthNavItem extends NavRouterItem {
  const AuthNavItem({required super.path});

  @override
  MaterialPage buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      key: state.pageKey,
      child: BlocProvider(
          create: (context) => AuthBloc(
                context.read(),
              ),
          child: AuthScreenWidget()),
    );
  }
}
