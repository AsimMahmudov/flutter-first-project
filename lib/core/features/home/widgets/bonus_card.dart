import 'package:flutter/material.dart';
import 'package:my_app/core/constants/app_size.dart';
import 'package:my_app/core/theme/app_colors.dart';

class BonusCard extends StatelessWidget {
  final int bonus;
  const BonusCard({super.key, required this.bonus});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.paddingM),

      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.radiusL),
      ),

      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.accent,
              borderRadius: BorderRadius.circular(AppSizes.radiusM),
            ),
            child: const Icon(Icons.toll, color: AppColors.white, size: 28),
          ),

          const SizedBox(width: AppSizes.paddingM),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ваши бонусы:', style: TextStyle(fontSize: 16)),
              Text(
                '$bonus',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),

          const Spacer(),

          const Icon(Icons.qr_code, size: 40, color: AppColors.textPrimary),
        ],
      ),
    );
  }
}
