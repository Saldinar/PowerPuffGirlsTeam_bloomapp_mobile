// ignore_for_file: sort_constructors_first

import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class AppTheme {
  late final ThemeData lightTheme;
  late final ThemeData darkTheme;

  AppTheme() {
    lightTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.lightGrey,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.white,
        brightness: Brightness.light,
      ),
      shadowColor: AppColors.grey[300],
      disabledColor: AppColors.grey,
      indicatorColor: AppColors.black,
      cardColor: AppColors.primary,
      primaryColor: AppColors.white,
      iconTheme: const IconThemeData(color: AppColors.black),
      textTheme: textTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColors.grey;
            }
            return AppColors.darkBlue;
          }),
          foregroundColor:
              WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColors.lightGrey;
            }
            return AppColors.white;
          }),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );

    darkTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.black,
      primaryColor: AppColors.darkPrimary,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.darkPrimary,
        brightness: Brightness.dark,
      ),
      shadowColor: AppColors.black,
      cardColor: AppColors.darkBlue,
      disabledColor: AppColors.grey,
      indicatorColor: AppColors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColors.grey;
            }
            return AppColors.primary;
          }),
          foregroundColor:
              WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColors.lightGrey;
            }
            return AppColors.white;
          }),
        ),
      ),
      iconTheme: const IconThemeData(color: AppColors.white),
      textTheme: textTheme,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.darkPrimary,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
  final TextTheme textTheme = const TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w800,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  );
}
