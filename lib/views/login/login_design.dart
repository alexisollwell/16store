import 'package:flutter/material.dart';
import 'package:store/components/boton_chido.dart';
import 'package:store/constants.dart';
import 'package:store/views/login/login_logic.dart';
import 'package:store/views/login/components/login_textfield.dart';
import 'package:store/views/register/register_screen.dart'; 

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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(), 
                        ),
                      );
                    },
                    child: Text(
                      "Registrate",
                      style: urlStyles,
                    ),
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
