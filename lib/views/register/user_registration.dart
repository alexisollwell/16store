// user_regis.dart
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store/components/my_button.dart';
import 'package:store/components/my_textfield.dart';
import 'package:store/components/square_tile.dart';
import 'package:store/views/register/user_logic.dart';

class UserRegis extends StatefulWidget {
  const UserRegis({Key? key}) : super(key: key);

  @override
  _UserRegis createState() => _UserRegis();
}

class _UserRegis extends State<UserRegis> {
  // Editing controllers
  final correoController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Lógica del usuario
  late UserLogic userLogic;

  @override
  void initState() {
    super.initState();
    userLogic = UserLogic(
      correoController: correoController,
      usernameController: usernameController,
      passwordController: passwordController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 197, 196, 196),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        // Logo
                        const Icon(
                          Icons.store, // Cambiado de Icons.lock a Icons.store
                          size: 100,
                        ),
                        const SizedBox(height: 20),
                        // Welcome
                        Text(
                          'Registrate para continuar',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 20),

                        MyTexField(
                          controller: correoController,
                          hintText: 'Nombre',
                          obscureText: false,
                        ),

                        const SizedBox(height: 10),

                        // Correo
                        MyTexField(
                          controller: usernameController,
                          hintText: 'Correo',
                          obscureText: false,
                        ),

                        const SizedBox(height: 10),

                        // Password
                        MyTexField(
                          controller: passwordController,
                          hintText: 'Password',
                          obscureText: true,
                        ),
                        const SizedBox(height: 10),

                        const SizedBox(height: 10),

                        // Terms and Conditions Checkbox
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            children: [
                              Checkbox(
                                value: userLogic.isTermsAccepted,
                                onChanged: (bool? value) {
                                  setState(() {
                                    userLogic.isTermsAccepted = value ?? false;
                                  });
                                },
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Aceptar términos y condiciones',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 10),

                        // My button
                        MyButton(
                          onTap: () => userLogic.signUserIn(context),
                        ),

                        const SizedBox(height: 20),

                        // Or continue
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text('Continuar con'),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // google + apple sign in buttons
                        const SizedBox(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            // google button
                            SquareTile(imagePath: 'assets/imagenes/google.png'),

                            SizedBox(width: 25),

                            // apple button
                            SquareTile(imagePath: 'assets/imagenes/apple.png')
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
