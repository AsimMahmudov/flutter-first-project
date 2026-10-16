import 'package:flutter/material.dart';
import 'package:my_app/core/constants/app_size.dart';
import 'package:my_app/core/theme/app_colors.dart';
import 'package:my_app/core/theme/app_test_styles.dart';

class AppSearchField extends StatelessWidget {
  final String hint;
  const AppSearchField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppTextStyles.body.copyWith(color: AppColors.textSecondary),
        prefixIcon: const Icon(Icons.search, color: AppColors.textPrimary),
        filled: true,
        fillColor: AppColors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusL),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
