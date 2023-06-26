import 'package:flutter/material.dart';
import 'package:offertorio/app_core/theme/app_color_scheme.dart';
import 'package:offertorio/app_core/theme/colors.dart';
import 'package:offertorio/app_core/theme/font_styles.dart';

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
        buttonTheme: const ButtonThemeData(
          splashColor: Colors.transparent,
        ),

        // ElevatedButton style
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.withe,
            disabledBackgroundColor: AppColors.tertiary,
            disabledForegroundColor: AppColors.withe,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              // fontWeight: FontWeight.bold,
              fontFamily: 'Palanquin',
            ),
            minimumSize: const Size(double.infinity, 45),
          ),
        ),

        // OutlinedButton style
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            splashFactory: NoSplash.splashFactory,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            backgroundColor: AppColors.withe,
            foregroundColor: AppColors.secondary,
            textStyle: ThemeData().textTheme.titleLarge!.copyWith(
                  color: AppColors.secondary,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            minimumSize: const Size(double.infinity, 48),
          ),
        ),

        // imputDecorationTheme textfield style
        inputDecorationTheme: InputDecorationTheme(
          focusColor: AppColors.blueeGreen,
          alignLabelWithHint: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            borderSide: BorderSide(color: AppColors.tertiary),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            borderSide: BorderSide(
              color: AppColors.tertiary,
            ),
          ),
          labelStyle: const TextStyle(
            color: AppColors.secondary,
            fontFamily: 'Palanquin',
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            borderSide: BorderSide(
              color: AppColors.error,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            borderSide: BorderSide(
              color: AppColors.blueeGreen,
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            borderSide: BorderSide(
              color: AppColors.tertiary,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            borderSide: BorderSide(
              color: AppColors.error,
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          isCollapsed: false,
          constraints: const BoxConstraints(
            maxHeight: 50,
            minHeight: 50,
            minWidth: double.infinity,
          ),
          hintStyle: ThemeData().textTheme.labelLarge!.copyWith(
                color: AppColors.tertiary,
                fontSize: 16,
              ),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.primary,
        ),
      );
}
