import 'package:flutter/material.dart';
import 'package:my_app/core/constants/app_size.dart';
import 'package:my_app/core/theme/app_colors.dart';
import 'package:my_app/core/theme/app_test_styles.dart';

class ProfileUserCard extends StatelessWidget {
  final String name;
  final String phone;
  final String avatarPath;

  const ProfileUserCard({
    super.key,
    required this.name,
    required this.phone,
    required this.avatarPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.paddingL),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radiusL),
      ),
      child: Row(
        children: [
          CircleAvatar(radius: 28, backgroundImage: AssetImage(avatarPath)),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: AppTextStyles.cardTitle),
                const SizedBox(height: 2),
                Text(phone, style: AppTextStyles.caption),
              ],
            ),
          ),
          const Icon(Icons.edit_square, color: AppColors.textPrimary),
        ],
      ),
    );
  }
}
