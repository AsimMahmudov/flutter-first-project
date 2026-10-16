import 'package:flutter/material.dart';
import 'package:my_app/core/theme/app_colors.dart';

class AppTheme {
   AppTheme._();

   static ThemeData get light => ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary)
    
   );
}