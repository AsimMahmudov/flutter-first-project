import 'package:flutter/material.dart';
import 'package:my_app/core/constants/app_size.dart';
import 'package:my_app/core/theme/app_colors.dart';
import 'package:my_app/core/theme/app_test_styles.dart';

class ShopCard extends StatelessWidget {
  final String name;
  final String rating;
  final String address;
  final String location;

  const ShopCard({
    super.key,
    required this.name,
    required this.rating,
    required this.address,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSizes.paddingM),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radiusL),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: AppTextStyles.cardTitle),
              const Icon(
                Icons.chevron_right,
                color: AppColors.textSecondary,
                size: 20,
              ),
            ],
          ),

          const SizedBox(height: AppSizes.paddingS),

          Text(
            address,
            style: AppTextStyles.caption,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: AppSizes.paddingS),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.star, color: AppColors.star, size: 18),
                  const SizedBox(width: 4),
                  Text(rating, style: AppTextStyles.body),
                ],
              ),

              Text(location, style: AppTextStyles.caption),
            ],
          ),
        ],
      ),
    );
  }
}
