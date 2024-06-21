import 'package:flutter/material.dart';

class LoginTextfield extends StatelessWidget {
  final IconData icon;
  final double width;
  final TextEditingController controller;
  final bool isPassword;

  const LoginTextfield({
    Key? key,
    required this.icon,
    required this.width,
    required this.controller,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        width: width,
        child: TextField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
