import 'package:flutter/material.dart';

class LoginLogic{

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  void _showAlert({
    required BuildContext context,
    required String title,
    required String message,
    String? textButton
  }){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text(textButton??"Cerrar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  void handleLogin(BuildContext context) {   
    if (usernameController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      _showAlert(
        context: context,
        title: "Bienvenido",
        message: 'Hola, ${usernameController.text}!',
        textButton: "Ok"
      );
    } else {
      _showAlert(
        context: context,
        title: "Error",
        message: 'Por favor, ingresa tu usuario y contraseña.',
      );
    }
  }
}