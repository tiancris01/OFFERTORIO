import 'package:flutter/material.dart';
import 'package:offertorio/app/theme/colors.dart';

const double displaySize = 40.0;
const double headLineSize = 26.0;
const double titleSize = 20.0;
const double subtitle = 18.0;
const double label = 16.0;

const String fontName = 'Palanquin';

const appTextTheme = TextTheme(
  displayLarge: TextStyle(
    fontFamily: fontName,
    fontSize: displaySize,
    fontWeight: FontWeight.bold,
    color: AppColors.secondary,
  ),
  headlineLarge: TextStyle(
    fontFamily: fontName,
    fontSize: headLineSize,
    fontWeight: FontWeight.bold,
    color: AppColors.secondary,
  ),
  titleLarge: TextStyle(
    fontFamily: fontName,
    fontSize: titleSize,
    fontWeight: FontWeight.bold,
    color: AppColors.secondary,
  ),
  bodyLarge: TextStyle(
    fontFamily: fontName,
    fontSize: subtitle,
    fontWeight: FontWeight.w500,
    color: AppColors.secondary,
  ),
  labelLarge: TextStyle(
    fontFamily: fontName,
    fontSize: label,
    fontWeight: FontWeight.w400,
    color: AppColors.secondary,
  ),
  labelMedium: TextStyle(
    fontFamily: fontName,
    fontSize: label,
    fontWeight: FontWeight.w300,
    color: AppColors.secondary,
  ),
  labelSmall: TextStyle(
    fontFamily: fontName,
    fontSize: label,
    fontWeight: FontWeight.w200,
    color: AppColors.secondary,
  ),
);
