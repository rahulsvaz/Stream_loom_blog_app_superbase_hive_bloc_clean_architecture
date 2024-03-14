import 'package:flutter/material.dart';
import 'package:stream_loom/core/theme/app_palette.dart';

class AppTheme {
  static _border([Color color = AppPalette.borderColor]) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: color, width: 3),
      );
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPalette.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: _border(),

      focusedBorder: _border(AppPalette.gradient2),
      focusedErrorBorder: _border(AppPalette.gradient2) ,
      errorBorder: _border(AppPalette.gradient2),
    ),
  );
}
 