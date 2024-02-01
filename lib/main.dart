import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  background: const Color.fromARGB(255, 59, 63, 65),
  seedColor: const Color.fromARGB(255, 59, 63, 65),
);

void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: kDarkColorScheme,
      cardTheme: const CardTheme().copyWith(
        color: kDarkColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kDarkColorScheme.onPrimaryContainer,
              fontSize: 16,
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.normal,
              color: kDarkColorScheme.onPrimaryContainer,
              fontSize: 14,
            ),
            titleSmall: TextStyle(
              fontWeight: FontWeight.normal,
              color: kDarkColorScheme.onPrimaryContainer,
              fontSize: 12,
            ),
          ),
    ),
    theme: ThemeData.from(
      useMaterial3: true,
      colorScheme: kColorScheme,
    ).copyWith(
        appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.primaryContainer,
            foregroundColor: kColorScheme.onPrimaryContainer),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer),
        ),
        textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColorScheme.onSecondaryContainer,
              fontSize: 16,
            ))),
    themeMode: ThemeMode.system,
    home: const Expenses(),
  ));
}
