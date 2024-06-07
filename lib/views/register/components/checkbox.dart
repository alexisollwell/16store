import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/register/components/terms_and_conditions.dart';

class CheckboxLogin extends StatefulWidget {
  const CheckboxLogin({super.key});

  @override
  State<CheckboxLogin> createState() => _CheckboxLoginState();
}

class _CheckboxLoginState extends State<CheckboxLogin> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            'Agree to Terms and Conditions and Privacy Policy',
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
