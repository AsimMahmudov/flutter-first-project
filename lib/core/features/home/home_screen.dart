import 'package:flutter/material.dart';
import 'package:my_app/core/constants/app_size.dart';
import 'package:my_app/core/features/home/home_header.dart';
import 'package:my_app/core/features/home/widgets/section_header.dart';
import 'package:my_app/core/theme/app_colors.dart';
import 'package:my_app/shared/widgets/app_button.dart';
import 'package:my_app/shared/widgets/product_card.dart';
import 'package:my_app/shared/widgets/shop_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,

      body: Column(
        children: [
          HomeHeader(),

          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: ListView(
                padding: const EdgeInsets.all(AppSizes.paddingL),
                children: [
                  SectionHeader(title: 'Популярные товары', onSeeAll: () {}),

                  const SizedBox(height: AppSizes.paddingM),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: AppSizes.paddingM,
                      children: [
                        ProductCard(
                          imagePath: 'assets/images/corm.png',
                          name: 'T1CM/пш',
                          price: 45,
                        ),
                        ProductCard(
                          imagePath: 'assets/images/corm2.png',
                          name: 'T1CM/пш',
                          price: 90,
                          isFavorite: true,
                        ),
                        ProductCard(
                          imagePath: 'assets/images/corm.png',
                          name: 'T1CM/пш',
                          price: 45,
                        ),
                        ProductCard(
                          imagePath: 'assets/images/corm2.png',
                          name: 'T1CM/пш',
                          price: 45,
                          isFavorite: true,
                        ),
                        ProductCard(
                          imagePath: 'assets/images/corm.png',
                          name: 'T1CM/пш',
                          price: 45,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: AppSizes.paddingL),

                  const SectionHeader(title: 'Ближайшие магазины'),
                  
                  const SizedBox(height: AppSizes.paddingM),

                  const Row(
                    spacing: AppSizes.paddingM,
                    children: [
                      Expanded(
                        child: ShopCard(
                          name: 'Барк',
                          rating: '4.8',
                          address: 'Арстанбека Дуйшеева, 1б',
                          location: '0.5 км',
                        ),
                      ),
                      Expanded(
                        child: ShopCard(
                          name: 'Барк',
                          rating: '4.8',
                          address: 'Арстанбека Дуйшеева, 1б',
                          location: '0.5 км',
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: AppSizes.paddingM),

                  const Row(
                    spacing: AppSizes.paddingM,
                    children: [
                      Expanded(
                        child: ShopCard(
                          name: 'Барк',
                          rating: '4.8',
                          address: 'Арстанбека Дуйшеева, 1б',
                          location: '0.5 км',
                        ),
                      ),
                      Expanded(
                        child: ShopCard(
                          name: 'Барк',
                          rating: '4.8',
                          address: 'Арстанбека Дуйшеева, 1б',
                          location: '0.5 км',
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: AppSizes.paddingL),

                  AppButton(text: "Все магазины", onPressed: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
