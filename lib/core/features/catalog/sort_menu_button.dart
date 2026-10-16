import 'package:flutter/material.dart';
import 'package:my_app/core/constants/app_size.dart';
import 'package:my_app/core/theme/app_colors.dart';
import 'package:my_app/core/theme/app_test_styles.dart';

class SortMenuButton extends StatelessWidget {
  const SortMenuButton({super.key});

  static const List<String> _sorts = [
    'По магазинам',
    'По наличию',
    'По цене',
    'По популярности',
  ];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.tune, color: AppColors.white),
      color: AppColors.white,
      offset: const Offset(0, 48),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.paddingM),
      ),

      onSelected: (value) {},

      itemBuilder: (context) => [
        const PopupMenuItem(
          enabled: false,
          height: 36,
          child: Text('Сортировка', style: AppTextStyles.cardTitle),
        ),
        for (final sort in _sorts) ...[
          PopupMenuItem(
            value: sort,
            height: 40,
            child: Text(sort, style: AppTextStyles.body),
          ),
          if (sort != _sorts.last) const PopupMenuDivider(height: 1),
        ],
      ],
    );
  }
}
