import 'package:flutter/material.dart';
import 'package:offertorio/app/config/colors.dart';

class AppTheme {
  static ThemeData get themeData => ThemeData(
        colorSchemeSeed: AppColors.principal,
        useMaterial3: true,
      );
}
