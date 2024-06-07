import 'package:flutter/material.dart';

class InputCustom extends StatelessWidget {
  const InputCustom({
    super.key,
    required this.controller,
    required this.text,
    required this.obscure,
    required this.icon,
    required this.message,
  });

  final TextEditingController controller;
  final String text;
  final bool obscure;
  final IconData icon;
  final String message;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      focusNode: FocusNode(),
      decoration: InputDecoration(
        labelText: text,
        prefixIcon: Icon(icon),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(33),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return message;
        }
        return null;
      },
    );
  }
}
