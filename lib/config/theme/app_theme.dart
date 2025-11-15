import 'package:flutter/material.dart';

// Variables
final _primaryColor = Color(0xFF9e2a2b);
// final _borderRadius = BorderRadius.circular(10.0);

final lightColorScheme = ColorScheme.fromSeed(seedColor: _primaryColor);

final darkColorScheme = ColorScheme.fromSeed(
  seedColor: _primaryColor,
  brightness: Brightness.dark,
  surface: Colors.black,
);

final lightTheme = ThemeData.from(colorScheme: lightColorScheme).copyWith(
  splashFactory: NoSplash.splashFactory,
  highlightColor: Colors.transparent,
);

final darkTheme = ThemeData.from(colorScheme: darkColorScheme).copyWith(
  splashFactory: NoSplash.splashFactory,
  highlightColor: Colors.transparent,
);
