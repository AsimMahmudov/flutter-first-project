import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Формат: 0xFF + HEX-код из Figma
  // FF — непрозрачность (100%), дальше обычный #RRGGBB
  static const Color primary = Color(
    0xFF3F6B3A,
  ); // зелёный (шапка, кнопка корзины)
  static const Color accent = Color(0xFFD2643F); // оранжевый (кнопки, лайк)
  static const Color background = Color(0xFFF2F2F2); // светло-серый фон
  static const Color white = Color(0xFFFFFFFF);
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF8A8A8A); // адрес, "0.5 км"
  static const Color star = Color(0xFFF5B82E); // звезда рейтинга
  static const Color error = Color.fromARGB(255, 255, 0, 0); // звезда рейтинга
}
