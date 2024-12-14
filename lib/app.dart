import 'package:explocive_detection/ui/router/nav_router.dart';
import 'package:explocive_detection/ui/screens/home/screen.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:explocive_detection/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ExplosiveApp extends StatelessWidget {
  final ThemeData theme;
  const ExplosiveApp({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<NavRouter>(
      create: (_) => NavRouter(),
      child: MainApp(
        theme: theme,
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  final ThemeData theme;
  const MainApp({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    final router = context.read<NavRouter>();
    return MaterialApp.router(
        theme: MaterialTheme(Theme.of(context).textTheme).darkHighContrast(),
        title: 'Explosive_detection',
        restorationScopeId: 'app',
        supportedLocales: const [Locale('uk', 'UA')],
        routerConfig: router.config,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ]);
  }
}
