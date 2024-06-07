import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/login/login_design.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginDesign()),
                  );
      },
      child: const Text('Log out')
      );
  }
}