import 'package:explocive_detection/ui/router/nav_router_item.dart';
import 'package:explocive_detection/ui/screens/home/bloc/bloc.dart';
import 'package:explocive_detection/ui/screens/home/screen.dart';
import 'package:flutter/src/material/page.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/src/state.dart';

class HomeNavItem extends NavRouterItem {
  const HomeNavItem({required super.path, super.children});

  @override
  MaterialPage buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      key: state.pageKey,
      child: BlocProvider(
          create: (context) => HomeBloc(
                context.read(),
              ),
          child: HomeScreen()),
    );
  }
}
