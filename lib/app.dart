import 'package:flutter/material.dart';
import 'package:my_app/core/features/main_shell/main_shell.dart';
import 'package:my_app/core/theme/app_theme.dart';

class BarkApp extends StatelessWidget {
  const BarkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asim',
      debugShowCheckedModeBanner: false,
      home: const MainShell(),
      theme: AppTheme.light,
    );
  }
}
