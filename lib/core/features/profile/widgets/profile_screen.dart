import 'package:flutter/material.dart';
import 'package:my_app/core/constants/app_size.dart';
import 'package:my_app/core/features/home/widgets/bonus_card.dart';
import 'package:my_app/core/features/profile/widgets/profile_menu_item.dart';
import 'package:my_app/core/features/profile/widgets/profile_user_card.dart';
import 'package:my_app/core/theme/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        scrolledUnderElevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new, size: 20),
        ),
        title: const Text(
          'Профиль',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(AppSizes.paddingL),
        children: [
          const ProfileUserCard(
            name: 'Имя Фамилия',
            phone: '+996 222 0002',
            avatarPath: 'assets/images/Asim.png',
          ),

          const SizedBox(height: AppSizes.paddingM),

          const BonusCard(bonus: 234),

          const SizedBox(height: AppSizes.paddingM),

          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(AppSizes.radiusL),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProfileMenuItem(
                  icon: Icons.access_time,
                  title: 'История заказов',
                ),
                const Divider(height: 1, indent: 16, endIndent: 16),
                const ProfileMenuItem(
                  icon: Icons.favorite_border,
                  title: 'Избранные',
                ),
                const Divider(height: 1, indent: 16, endIndent: 16),
                const ProfileMenuItem(
                  icon: Icons.receipt_long_outlined,
                  title: 'Электронные чеки',
                ),
                const Divider(height: 1, indent: 16, endIndent: 16),
                const ProfileMenuItem(
                  icon: Icons.mail_outline,
                  title: 'Техподдержка',
                ),
                const Divider(height: 1, indent: 16, endIndent: 16),
                const ProfileMenuItem(
                  icon: Icons.settings_outlined,
                  title: 'Настройки',
                ),
                const Divider(height: 1, indent: 16, endIndent: 16),
                const ProfileMenuItem(icon: Icons.translate, title: 'Язык'),
                const Divider(height: 1, indent: 16, endIndent: 16),

                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Удалить аккаунт',
                    style: TextStyle(color: AppColors.error, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
