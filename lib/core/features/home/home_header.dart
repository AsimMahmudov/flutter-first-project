import 'package:flutter/material.dart';
import 'package:my_app/core/constants/app_size.dart';
import 'package:my_app/core/features/home/widgets/bonus_card.dart';
import 'package:my_app/core/features/notification/notification_screen.dart';
import 'package:my_app/core/theme/app_colors.dart';
import 'package:my_app/shared/widgets/app_search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSizes.paddingL,
            AppSizes.paddingM,
            AppSizes.paddingL,
            AppSizes.paddingL,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.landscape, color: AppColors.white),
                  const SizedBox(width: 6),
                  const Text(
                    'Asim',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotificationScreen(),
                        ),
                      );
                    },

                    child: const Badge(
                      label: Text('2'),
                      backgroundColor: AppColors.accent,
                      child: Icon(
                        Icons.notifications_none,
                        color: AppColors.white,
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  const Icon(
                    Icons.shopping_cart_outlined,
                    color: AppColors.white,
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.paddingL),
              const AppSearchField(hint: 'Товары и магазины'),

              const SizedBox(height: AppSizes.paddingM),
              const BonusCard(bonus: 234),
            ],
          ),
        ),
      ),
    );
  }
}
