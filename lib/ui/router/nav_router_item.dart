import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class NavRouterItem {
  final String path;
  final List<NavRouterItem> children;

  const NavRouterItem({
    required this.path,
    this.children = const [],
  });

  MaterialPage buildPage(BuildContext context, GoRouterState state);
}
