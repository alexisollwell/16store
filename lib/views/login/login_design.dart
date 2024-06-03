import 'package:flutter/material.dart';
import 'package:store/components/boton_chido.dart';
import 'package:store/constants.dart';

import 'components/login_textfield.dart';

class LoginDesign extends StatefulWidget {
  const LoginDesign({super.key});

  @override
  State<LoginDesign> createState() => _LoginDesignState();
}

class _LoginDesignState extends State<LoginDesign> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _userController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (_, constraints) {
          return Column(
            children: [
              const Spacer(flex: 2),
              LoginTextfield(
                icon: Icons.person,
                width: constraints.constrainWidth(),
                controller: _userController,
                hintText: 'Usuario',
              ),
              LoginTextfield(
                icon: Icons.lock,
                width: constraints.constrainWidth(),
                controller: _passwordController,
                hintText: 'Contraseña',
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Olvidaste tu contraseña", style: urlStyles),
                  ],
                ),
              ),
              const Spacer(),
              BotonChido(
                texto: "Iniciar Sesión",
                color: Colors.orange,
                ancho: constraints.constrainWidth() * 0.5,
                alPrecionar: () {
                  // Aquí puedes agregar la lógica para iniciar sesión
                  final usuario = _userController.text;
                  final contraseña = _passwordController.text;
                  print('Usuario: $usuario, Contraseña: $contraseña');
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Registrate", style: urlStyles),
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
