import 'package:flutter/material.dart';

import 'custom_light_theme.dart';
import 'custom_theme.dart';

/// Custom light theme for project design
final class CustomDarkTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        splashFactory: NoSplash.splashFactory,
        inputDecorationTheme:
            CustomLightTheme().themeData.inputDecorationTheme.copyWith(
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
        cardTheme: CardTheme(
          color: Colors.grey.shade100,
          margin: const EdgeInsets.only(top: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        listTileTheme: const ListTileThemeData(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            textStyle: const TextStyle(
              color: Colors.black,
            ),
            padding: const EdgeInsets.all(14),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      );

  @override
  final FloatingActionButtonThemeData floatingActionButtonThemeData =
      const FloatingActionButtonThemeData();
}
