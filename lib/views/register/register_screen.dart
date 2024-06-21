import 'package:flutter/material.dart';
import 'package:store/components/boton_chido.dart';
import 'package:store/views/login/components/login_textfield.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void _register(BuildContext context) {
    final email = emailController.text;
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;

    if (!_isValidEmail(email)) {
      _showErrorDialog(context, 'Correo electrónico no válido');
      return;
    }

    if (password.isEmpty || confirmPassword.isEmpty) {
      _showErrorDialog(context, 'La contraseña no puede estar vacía');
      return;
    }

    if (password != confirmPassword) {
      _showErrorDialog(context, 'Las contraseñas no coinciden');
      return;
    }

    
    _showSuccessDialog(context, 'Registro exitoso');
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    return emailRegex.hasMatch(email);
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showSuccessDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Éxito'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop(); 
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (_, constraints) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                LoginTextfield(
                  icon: Icons.email,
                  width: constraints.constrainWidth(),
                  controller: emailController,
                ),
                LoginTextfield(
                  icon: Icons.lock,
                  width: constraints.constrainWidth(),
                  controller: passwordController,
                  isPassword: true,
                ),
                LoginTextfield(
                  icon: Icons.lock,
                  width: constraints.constrainWidth(),
                  controller: confirmPasswordController,
                  isPassword: true,
                ),
                const Spacer(),
                BotonChido(
                  texto: "Registrarse",
                  color: Colors.green,
                  ancho: constraints.constrainWidth() * 0.5,
                  alPrecionar: () => _register(context),
                ),
                const Spacer(flex: 2),
              ],
            ),
          );
        },
      ),
    );
  }
}
