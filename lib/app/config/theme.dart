import 'package:flutter/material.dart';
import 'package:offertorio/app/config/colors.dart';

class AppTheme {
  static ThemeData get themeData => ThemeData(
        useMaterial3: true,
        primaryColor: AppColors.principal,
        scaffoldBackgroundColor: AppColors.withe,
        // TextTheme style
        textTheme: ThemeData().textTheme.apply(
              fontFamily: 'Roboto',
            ),
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
            backgroundColor: AppColors.principal,
            foregroundColor: AppColors.secondary,
            disabledBackgroundColor: AppColors.tertiary,
            disabledForegroundColor: AppColors.withe,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            textStyle: TextStyle(
              color: AppColors.secondary,
              fontSize: 16,
              // fontWeight: FontWeight.bold,
              fontFamily: 'Palanquin',
            ),
            minimumSize: Size(180, 40),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          alignLabelWithHint: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.principal,
            ),
          ),
          suffixIconColor: AppColors.tertiary,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.blueeGreen,
            ),
          ),
          labelStyle: TextStyle(
            color: AppColors.principal,
            fontFamily: 'Palanquin',
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.error,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
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
            borderSide: BorderSide(
              color: AppColors.error,
              width: 2,
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          isCollapsed: false,
        ),
      );
}
