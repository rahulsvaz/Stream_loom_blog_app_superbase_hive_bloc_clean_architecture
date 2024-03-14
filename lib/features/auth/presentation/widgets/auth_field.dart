import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final TextEditingController controller;
  const AuthField(
      {super.key,
      required this.hint,
      required this.controller,
      this.obscure = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      obscuringCharacter: '*',
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return "$hint is empty";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: hint,
      ),
    );
  }
}
