import 'package:explocive_detection/ui/router/nav_router_item.dart';
import 'package:explocive_detection/ui/screens/report/bloc/bloc.dart';
import 'package:explocive_detection/ui/screens/report/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ReportNavItem extends NavRouterItem {
  const ReportNavItem({required super.path});

  @override
  MaterialPage buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      key: state.pageKey,
      child: BlocProvider(
        create: (context) => ReportBloc(
          context.read(),
        ),
        child: ReportScreen(),
      ),
    );
  }
}
