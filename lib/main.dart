import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'firebase_options.dart';
import 'injectable.dart';
import 'presentation/core/the_tulip_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.dev);

  // Initializing Firebase App
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await FirebaseAppCheck.instance.activate();

  final AdaptiveThemeMode savedThemeMode = await AdaptiveTheme.getThemeMode() ?? AdaptiveThemeMode.system;

  runApp(TheTulipManager(savedThemeMode));
}
