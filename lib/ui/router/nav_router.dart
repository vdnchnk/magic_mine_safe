import 'package:explocive_detection/ui/router/nav_keys.dart';
import 'package:explocive_detection/ui/router/nav_router_item.dart';
import 'package:explocive_detection/ui/screens/auth/navigation.dart';
import 'package:explocive_detection/ui/screens/home/navigation.dart';
import 'package:explocive_detection/ui/screens/report/navigation.dart';
import 'package:explocive_detection/ui/screens/report_list/navigation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavRouter {
  static GoRoute _map(NavRouterItem item, String? parentPath) {
    return GoRoute(
      path: item.path,
      pageBuilder: item.buildPage,
      routes: item.children
          .map(
            (e) => _map(e, item.path),
          )
          .toList(),
    );
  }

  static const _navItems = <NavRouterItem>[
    HomeNavItem(path: NavKeys.home, children: [
      ReportListNavItem(path: NavKeys.reportList),
    ]),
    AuthNavItem(path: NavKeys.auth),
    ReportNavItem(path: NavKeys.addReport)
  ];

  final GoRouter _router = GoRouter(
    restorationScopeId: 'router',
    initialLocation: NavKeys.home,
    debugLogDiagnostics: kDebugMode,
    routes: _navItems
        .map(
          (e) => _map(e, null),
        )
        .toList(),
  );

  RouterConfig<Object> get config => _router;

  void go(String path) => _router.go(path);

  Future<T?> push<T extends Object?>(String path) => _router.push(path);
}
