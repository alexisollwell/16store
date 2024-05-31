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
              const Spacer(),
              Container(
                height: constraints.constrainHeight() * 0.3,
                width: constraints.constrainWidth(),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Image.asset(
                    "assets/store.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Spacer(flex: 1),
              LoginTextfield(
                icon: Icons.person,
                width: constraints.constrainWidth(),
                hintText: "Usuario",
              ),
              LoginTextfield(
                icon: Icons.password,
                width: constraints.constrainWidth(),
                hintText: "Contraseña",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Olvidaste tu contraseña", style: urlStyles)
                  ],
                ),
              ),
              const Spacer(),
              BotonChido(
                texto: "Iniciar Sesión",
                color: Colors.orange,
                ancho: constraints.constrainWidth() * 0.5,
                alPrecionar: () {},
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Registrate", style: urlStyles)
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

