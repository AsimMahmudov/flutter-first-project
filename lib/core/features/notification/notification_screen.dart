import 'package:flutter/material.dart';
import 'package:my_app/core/theme/app_colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        centerTitle: true,
        title: const Text(
          'Уведомления',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),

      body: ListView(
        
      ),
    );

  }
}
