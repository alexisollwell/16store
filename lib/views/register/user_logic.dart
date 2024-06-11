// user_logic.dart
import 'package:flutter/material.dart';

class UserLogic {
  final TextEditingController correoController;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  bool isTermsAccepted;

  UserLogic({
    required this.correoController,
    required this.usernameController,
    required this.passwordController,
    this.isTermsAccepted = false,
  });

  void signUserIn(BuildContext context) {
    if (correoController.text.isEmpty ||
        usernameController.text.isEmpty ||
        passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, complete todos los campos')),
      );
    } else if (!isTermsAccepted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, acepte los términos y condiciones')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registro correcto')),
      );
    }
  }
}
