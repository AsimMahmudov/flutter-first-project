import 'package:flutter/material.dart';
import 'package:my_app/core/constants/app_size.dart';
import 'package:my_app/core/features/catalog/sort_menu_button.dart';
import 'package:my_app/core/theme/app_colors.dart';
import 'package:my_app/shared/widgets/app_search_field.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Каталог',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                
                const SortMenuButton(),
              ],
            ),

            const SizedBox(height: AppSizes.paddingM),

            const AppSearchField(hint: 'Найти товары'),
          ],
        ),
      ),
    );
  }
}
