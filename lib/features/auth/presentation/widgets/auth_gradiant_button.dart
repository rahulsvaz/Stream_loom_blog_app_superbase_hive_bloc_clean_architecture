import 'package:flutter/material.dart';
import 'package:stream_loom/core/theme/app_palette.dart';

class AuthGradientButton extends StatelessWidget {
  final String label;
  const AuthGradientButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            AppPalette.gradient1,
            AppPalette.gradient2,

            // AppPalette.gradient3
          ],
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppPalette.transparentColor,
            shadowColor: AppPalette.transparentColor,
            fixedSize: const Size(395, 55)),
        onPressed: () {},
        child: Text(
          label,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
