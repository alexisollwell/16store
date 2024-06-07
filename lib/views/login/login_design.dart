import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/navigation_bar.dart';
import 'package:flutter_application_1/components/logo.dart';
import 'package:flutter_application_1/components/input.dart';
import 'package:flutter_application_1/views/register/register_design.dart';

class LoginDesign extends StatefulWidget {
  const LoginDesign({super.key});

  @override
  State<LoginDesign> createState() => _LoginDesignState();
}

class _LoginDesignState extends State<LoginDesign> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.greenAccent,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Logo(radius: 132),
                  const SizedBox(height: 20),
                  const Text(
                    'Welcome to 16 Store!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color:
                          Colors.lightBlue,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InputCustom(controller: _emailController, text: 'Email', obscure: false, icon: Icons.email, message: 'Please enter your email',),
                  const SizedBox(height: 16),
                  InputCustom(controller: _passwordController, text: 'Password', obscure: true, icon: Icons.password, message: 'Please enter your password',),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register()),
                          );
                        },
                        child: const Text('Register'),
                      ),
                      TextButton(
                        onPressed: () {
                          
                        },
                        child: const Text('Forgot password?'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        try {
                          String email = _emailController.text;
                          String password = _passwordController.text;
                          if (email == 'admin' && password == 'admin') {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NavBar(selectedIndex: 0)),
                          );
                          } else {
                            throw 'Invalid credentials!';
                          }
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(e.toString()),
                            ),
                          );
                        }
                      },
                      child: const Text('Login'),
                      
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
