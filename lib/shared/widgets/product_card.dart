import 'package:flutter/material.dart';
import 'package:my_app/core/constants/app_size.dart';
import 'package:my_app/core/theme/app_colors.dart';
import 'package:my_app/core/theme/app_test_styles.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final int price;
  final bool isFavorite;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
    this.isFavorite = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      padding: const EdgeInsets.all(AppSizes.paddingS),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radiusL),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.radiusM),
            child: Image.asset(
              imagePath,
              height: 110,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: AppSizes.paddingS),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: AppTextStyles.body),
              Text('$price c', style: AppTextStyles.price),
            ],
          ),

          const SizedBox(height: AppSizes.paddingS),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? AppColors.accent : AppColors.textSecondary,
              ),
              Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.shape_line_outlined,
                  color: AppColors.white,
                  size: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
