import 'package:flutter/material.dart';
import 'package:offertorio/app/theme/app_color_scheme.dart';
import 'package:offertorio/app/theme/colors.dart';
import 'package:offertorio/app/theme/font_styles.dart';

class AppTheme {
  static ThemeData get themeData => ThemeData(
        useMaterial3: true,
        primaryColor: AppColors.primary,
        colorScheme: appColorScheme,
        scaffoldBackgroundColor: AppColors.withe,
        // TextTheme style
        fontFamily: 'Palanquin',
        textTheme: appTextTheme,
        primaryTextTheme: ThemeData().textTheme.apply(
              fontFamily: 'Palanquin',
            ),
        // ElevatedButton style
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 10,
            ),
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.secondary,
            disabledBackgroundColor: AppColors.tertiary,
            disabledForegroundColor: AppColors.withe,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            textStyle: const TextStyle(
              color: AppColors.secondary,
              fontSize: 16,
              // fontWeight: FontWeight.bold,
              fontFamily: 'Palanquin',
            ),
            minimumSize: const Size(180, 40),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          alignLabelWithHint: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.primary,
            ),
          ),
          suffixIconColor: AppColors.tertiary,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.blueeGreen,
            ),
          ),
          labelStyle: const TextStyle(
            color: AppColors.primary,
            fontFamily: 'Palanquin',
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.error,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.blueeGreen,
              width: 2,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 24,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: const BorderSide(
              color: AppColors.error,
              width: 2,
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          isCollapsed: false,
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.primary,
        ),
      );
}
