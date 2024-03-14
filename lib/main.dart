import 'package:flutter/material.dart';
import 'package:stream_loom/core/theme/theme.dart';
import 'package:stream_loom/features/auth/presentation/pages/sign_in_page/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkThemeMode,
      home: const SignInPage(),
    );
  }
}
