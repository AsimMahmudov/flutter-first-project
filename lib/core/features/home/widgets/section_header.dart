import 'package:flutter/material.dart';
import 'package:my_app/core/theme/app_colors.dart';
import 'package:my_app/core/theme/app_test_styles.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onSeeAll;
  const SectionHeader({super.key, required this.title, this.onSeeAll});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTextStyles.sectionTitle),
        if (onSeeAll != null)
        GestureDetector(
          onTap: onSeeAll,
          child: const Text(
            'Все',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.textSecondary,
              decoration: TextDecoration.underline
            ),
          ),
        )
      ],
    );
  }
}
