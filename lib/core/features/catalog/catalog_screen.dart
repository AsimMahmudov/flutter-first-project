import 'package:flutter/material.dart';
import 'package:my_app/core/constants/app_size.dart';
import 'package:my_app/core/features/catalog/catalog_header.dart';
import 'package:my_app/core/theme/app_colors.dart';
import 'package:my_app/shared/widgets/category_card.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          const CatalogHeader(),

          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: GridView.count(
                padding: const EdgeInsets.all(AppSizes.paddingL),
                crossAxisCount: 2,
                mainAxisSpacing: AppSizes.paddingM,
                crossAxisSpacing: AppSizes.paddingM,
                childAspectRatio: 0.9,
                children: const [
                  CategoryCard(
                    title: 'Для кур',
                    imagePath: 'assets/images/img1.png',
                  ),
                  CategoryCard(
                    title: 'Для кур',
                    imagePath: 'assets/images/img1.png',
                  ),
                  CategoryCard(
                    title: 'Для кур',
                    imagePath: 'assets/images/img1.png',
                  ),
                  CategoryCard(
                    title: 'Для кур',
                    imagePath: 'assets/images/img1.png',
                  ),
                  CategoryCard(
                    title: 'Для кур',
                    imagePath: 'assets/images/img1.png',
                  ),
                  CategoryCard(
                    title: 'Для кур',
                    imagePath: 'assets/images/img1.png',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
