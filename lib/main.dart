import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';
import 'injectable.dart';
import 'presentation/core/the_tulip_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.dev);

  // Initializing Firebase App
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseAppCheck.instance.activate();

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  int themeIndex = prefs.getInt('themeIndex') ?? 0;

  runApp(TheTulipManager(themeIndex));
}
