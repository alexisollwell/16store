import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/input_password.dart';
import 'package:flutter_application_1/components/navigation_bar.dart';
import 'package:flutter_application_1/components/logo.dart';
import 'package:flutter_application_1/components/input_email.dart';
import 'package:flutter_application_1/views/register/register_design.dart';

class LoginDesign extends StatefulWidget {
  const LoginDesign({super.key});

  @override
  State<LoginDesign> createState() => _LoginDesignState();
}

class _LoginDesignState extends State<LoginDesign> {
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
                const InputEmail(text: 'Email', obscure: false),
                const SizedBox(height: 16),
                const InputPassword(text: 'Password', obscure: true),
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
                Container(
                  width: double.infinity,
                  height: 50,                  
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NavBar(selectedIndex: 0)),
                        );
                    },
                    child: const Text('Login'),
                    
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
