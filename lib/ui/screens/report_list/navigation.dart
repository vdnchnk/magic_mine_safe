import 'package:explocive_detection/ui/router/nav_router_item.dart';
import 'package:explocive_detection/ui/screens/report_list/bloc/bloc.dart';
import 'package:explocive_detection/ui/screens/report_list/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ReportListNavItem extends NavRouterItem {
  const ReportListNavItem({required super.path});

  @override
  MaterialPage buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      key: state.pageKey,
      child: BlocProvider(
        create: (context) => ReportListBloc(
          context.read(),
        ),
        child: ReportListScreen(),
      ),
    );
  }
}
