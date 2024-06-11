// login_logic.dart
import 'package:flutter/material.dart';

class LoginLogic {
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController contrasenaController = TextEditingController();

  void iniciarSesion(BuildContext context) {
    final usuario = usuarioController.text;
    final contrasena = contrasenaController.text;

    if (usuario.isEmpty || contrasena.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, complete todos los campos')),
      );
    } else {
      // Lógica de inicio de sesión aquí
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Inicio de sesión correcto')),
      );
    }
  }
}
