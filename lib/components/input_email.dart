import 'package:flutter/material.dart';

class InputEmail extends StatelessWidget {
  const InputEmail({
    super.key,
    required this.text,
    required this.obscure,
  });

  final String text;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        obscureText: obscure,
        decoration: InputDecoration(
          labelText: text,
          prefixIcon: const Icon(Icons.email_outlined),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(33),
          ),
        ),
      ),
    );
  }
}
