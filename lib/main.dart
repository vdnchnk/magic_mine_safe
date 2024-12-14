import 'package:explocive_detection/app.dart';
import 'package:explocive_detection/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:json_theme_plus/json_theme_plus.dart';

import 'package:flutter/services.dart'; // For rootBundle
import 'dart:convert'; // For jsonDecode

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final themeStr = await rootBundle.loadString('assets/appainter_theme.json');
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;

  runApp(RootRestorationScope(
    restorationId: 'root',
    child: ExplosiveApp(
      theme: theme,
    ),
  ));
}
