import 'package:flutter/material.dart';

class TheTulipThemes {
  TheTulipThemes._();

  static ThemeData pinkLight = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.pink,
      brightness: Brightness.light,
    ),
  );
  static ThemeData pinkDark = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.pink,
      brightness: Brightness.dark,
    ),
  );

  static ThemeData yellowLight = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.yellow,
      brightness: Brightness.light,
    ),
  );
  static ThemeData yellowDark = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.yellow,
      brightness: Brightness.dark,
    ),
  );

  static ThemeData redLight = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.light,
    ),
  );
  static ThemeData redDark = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.dark,
    ),
  );

  static ThemeData purpleLight = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.purple,
      brightness: Brightness.light,
    ),
  );
  static ThemeData purpleDark = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.purple,
      brightness: Brightness.dark,
    ),
  );

  static ThemeData orangeLight = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.orange,
      brightness: Brightness.light,
    ),
  );
  static ThemeData orangeDark = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.orange,
      brightness: Brightness.dark,
    ),
  );

  static ThemeData indigoLight = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.indigo,
      brightness: Brightness.light,
    ),
  );
  static ThemeData indigoDark = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.indigo,
      brightness: Brightness.dark,
    ),
  );

  static ThemeData lightBlueLight = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.lightBlue,
      brightness: Brightness.light,
    ),
  );
  static ThemeData lightBlueDark = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.lightBlue,
      brightness: Brightness.dark,
    ),
  );

  static ThemeData lightGreenLight = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.lightGreen,
      brightness: Brightness.light,
    ),
  );
  static ThemeData lightGreenDark = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.lightGreen,
      brightness: Brightness.dark,
    ),
  );

  static ThemeData yellowAccentLight = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.yellowAccent,
      brightness: Brightness.light,
    ),
  );
  static ThemeData yellowAccentDark = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.yellowAccent,
      brightness: Brightness.dark,
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primarySwatch: Colors.grey,
  );

  static List<ThemeData> themes = <ThemeData>[
    pinkLight,
    pinkDark,
    yellowLight,
    yellowDark,
    redLight,
    redDark,
    purpleLight,
    purpleDark,
    orangeLight,
    orangeDark,
    indigoLight,
    indigoDark,
    lightBlueLight,
    lightBlueDark,
    lightGreenLight,
    lightGreenDark,
    yellowAccentLight,
    yellowAccentDark,
    dark,
  ];
}
