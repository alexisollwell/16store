import 'package:flutter/material.dart';
import 'package:store/components/boton_chido.dart';
import 'package:store/constants.dart';


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
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),

      body: LayoutBuilder(
        builder: (_, constraints) {
          return Column(
            children: [
              const Spacer(flex: 2),
              ClipOval(
                child: Image.asset(
                  'assets/logo.jpeg',
                  width: constraints.maxWidth * 0.3,
                  height: constraints.maxWidth * 0.3,
                  fit: BoxFit.cover,
                ), //image.asset
              ), //clipoval
              LoginTextfield(
                icon: Icons.person,
                width: constraints.constrainWidth(),
                controller: _usernameController,
              ),
              LoginTextfield(
                icon: Icons.lock,
                width: constraints.constrainWidth(),
                controller: _passwordController,
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
                    )
                  ],
                ),
              ),
              const Spacer(),
              BotonChido(
                texto: "Iniciar Sesión",
                color: Colors.orange,
                ancho: constraints.constrainWidth() * 0.5,
                alPrecionar: () {
                  // Aquí puedes manejar el evento de iniciar sesión
                  print("Username: ${_usernameController.text}");
                  print("Password: ${_passwordController.text}");
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Registrate",
                    style: urlStyles,
                  )
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
