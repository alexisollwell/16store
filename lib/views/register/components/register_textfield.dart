import 'package:flutter/material.dart';

class RegisterTextField extends StatelessWidget {
  final double width;
  final IconData icon;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String hintText;
  final TextEditingController? controller;

  const RegisterTextField({
    Key? key,
    required this.width,
    required this.icon,
    this.validator,
    this.onChanged,
    this.hintText = 'Enter text here',
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: width,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            icon: Icon(icon, color: Colors.black, size: 30),
            hintText: hintText,
            border: InputBorder.none,
          ),
          validator: validator,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
