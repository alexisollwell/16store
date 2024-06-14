import 'package:flutter/material.dart';
import 'package:store/components/boton_chido.dart';
import 'package:store/constants.dart';

class LoginLogic {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void handleLogin(BuildContext context) {
    final email = usernameController.text;
    final password = passwordController.text;

    if (!_isValidEmail(email)) {
      _showErrorDialog(context, 'Correo electrónico no válido');
      return;
    }

    if (password.isEmpty) {
      _showErrorDialog(context, 'La contraseña no puede estar vacía');
      return;
    }

    // Aquí iría la lógica para manejar el inicio de sesión, por ejemplo, autenticarse con un servidor.
    _showSuccessDialog(context, 'Inicio de sesión exitoso');
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
              },
            ),
          ],
        );
      },
    );
  }
}

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

class LoginDesign extends StatefulWidget {
  const LoginDesign({super.key});

  @override
  State<LoginDesign> createState() => _LoginDesignState();
}

class _LoginDesignState extends State<LoginDesign> {
  late LoginLogic logic;

  @override
  void initState() {
    logic = LoginLogic();
    super.initState();
  }

  @override
  void dispose() {
    logic.usernameController.dispose();
    logic.passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("16Store"),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (_, constraints) {
          return Column(
            children: [
              const Spacer(flex: 2),
              ClipOval(
                child: Image.asset(
                  'assets/images/logo.jpeg',
                  width: constraints.maxWidth * 0.3,
                  height: constraints.maxWidth * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              LoginTextfield(
                icon: Icons.person,
                width: constraints.constrainWidth(),
                controller: logic.usernameController,
              ),
              LoginTextfield(
                icon: Icons.lock,
                width: constraints.constrainWidth(),
                controller: logic.passwordController,
                isPassword: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Olvidaste tu contraseña",
                      style: urlStyles,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              BotonChido(
                texto: "Iniciar Sesión",
                color: Colors.orange,
                ancho: constraints.constrainWidth() * 0.5,
                alPrecionar: () => logic.handleLogin(context),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Registrate",
                    style: urlStyles,
                  ),
                ],
              ),
              const Spacer(flex: 2),
            ],
          );
        },
      ),
    );
  }
}
