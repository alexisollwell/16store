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
      backgroundColor: const Color.fromARGB(255, 243, 237, 237),
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (_, constraints) {
          return Column(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://static1.cbrimages.com/wordpress/wp-content/uploads/2019/11/Goku-Feature-Image.jpg',
                ),
                radius: 50, // Set a custom radius for the circle
              ),
              const Spacer(flex: 2),
              LoginTextfield(
                icon: Icons.person,
                width: constraints.constrainWidth(),
              ),
              LoginTextfield(
                icon: Icons.password,
                width: constraints.constrainWidth(),
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
                color: const Color.fromARGB(255, 0, 4, 255),
                ancho: constraints.constrainWidth() * 0.5,
                alPrecionar: () {},
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



