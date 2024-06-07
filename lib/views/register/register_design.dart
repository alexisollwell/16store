import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/back_arrow.dart';
import 'package:flutter_application_1/components/logo.dart';
import 'package:flutter_application_1/components/input.dart';
import 'package:flutter_application_1/views/register/components/terms_and_conditions.dart';
import 'package:flutter_application_1/views/register/register_logic.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _LoginDesignState();
}

class _LoginDesignState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _isChecked = false;
  
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
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          BackArrow(),
                          Logo(radius: 33),
                        ],
                      ),
                      const SizedBox(height: 33),
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
                      InputCustom(controller: _nameController, text: 'Name', obscure: false, icon: Icons.person, message: 'Please enter your name'),
                      const SizedBox(height: 16),
                      InputCustom(controller: _emailController, text: 'Email', obscure: false, icon: Icons.email, message: 'Please enter your email'),
                      const SizedBox(height: 16),
                      InputCustom(controller: _passwordController, text: 'Password', obscure: true, icon: Icons.password, message: 'Please enter a valid password'),
                      const SizedBox(height: 8),
                      const Text('Password must be between 8 and 16 characters long, it cannot contain spaces, and must contain at least one of these special characters: @ # % & * !'),
                      const SizedBox(height: 8),
                      InputCustom(controller: _confirmPasswordController, text: 'Re-enter password', obscure: true, icon: Icons.password, message: 'Please enter a valid password'),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Terms()),
                              );
                            },
                            child: const Text(
                              'Agree to the Terms and Conditions and Privacy Policy',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (!_formKey.currentState!.validate() || !_isChecked) {
                              return;
                            }
                            String name = _nameController.text;
                            String email = _emailController.text;
                            String password = _passwordController.text;
                            String confirmPassword = _confirmPasswordController.text;
                            
                            bool success = await RegisterController().register(name, email, password, confirmPassword);
                            if (success) {
                              showDialog(
                                // ignore: use_build_context_synchronously
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext dialogContext) {
                                  return CupertinoAlertDialog(
                                    title: const Text('Success'),
                                    content: const Text('You have successfully registered!'),
                                    actions: [
                                      CupertinoDialogAction(
                                        child: const Text('OK'),
                                        onPressed: () {
                                          Navigator.pop(dialogContext);
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                            else {
                              showDialog(
                                // ignore: use_build_context_synchronously
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext dialogContext) {
                                  return CupertinoAlertDialog(
                                    title: const Text('Error'),
                                    content: const Text('Please verify the information and try again.'),
                                    actions: [
                                      CupertinoDialogAction(
                                        child: const Text('OK'),
                                        onPressed: () {
                                          Navigator.pop(dialogContext);
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                          child: const Text('Register'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
