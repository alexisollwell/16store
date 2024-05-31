import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/back_arrow.dart';
import 'package:flutter_application_1/components/input_password.dart';
import 'package:flutter_application_1/components/logo.dart';
import 'package:flutter_application_1/components/input_email.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _LoginDesignState();
}

class _LoginDesignState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.blue,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BackArrow(),
                    Logo(radius: 33),
                  ],
                ),
                const SizedBox(height: 66),
                const Text(
                  'Register here!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color:
                        Colors.lightBlue,
                  ),
                ),
                const SizedBox(height: 16),
                const InputEmail(text: 'Email', obscure: false),
                const SizedBox(height: 16),
                const InputPassword(text: 'Password', obscure: true),
                const SizedBox(height: 16),
                const InputPassword(text: 'Re-enter password', obscure: true),
                const SizedBox(height: 66),
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Register'),
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
