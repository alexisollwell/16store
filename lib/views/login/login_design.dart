// login_design.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store/components/boton_chido.dart';
import 'package:store/constants.dart';
import 'package:store/views/login/login_logic.dart';
import 'package:store/views/register/user_registration.dart';

class LoginDesign extends StatefulWidget {
  const LoginDesign({super.key});

  @override
  State<LoginDesign> createState() => _LoginDesignState();
}

class _LoginDesignState extends State<LoginDesign> {
  // Lógica del usuario
  late LoginLogic loginLogic;

  @override
  void initState() {
    super.initState();
    loginLogic = LoginLogic();
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
              const Spacer(
                flex: 2,
              ),
              CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/media/EbZ9DsNXgAArGVh?format=jpg&name=small')),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: loginLogic.usuarioController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Usuario',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    )),
              ),
              SizedBox(height: 10),
              TextField(
                  controller: loginLogic.contrasenaController,
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Contrasena',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                      ))),
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
                  loginLogic.iniciarSesion(context);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserRegis()),
                      );
                    },
                    child: Text(
                      "Regístrate",
                      style: TextStyle(
                        color:
                            Colors.blue, // Puedes personalizar el estilo aquí
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          );
        },
      ),
    );
  }
}
