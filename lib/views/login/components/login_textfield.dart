import 'package:flutter/material.dart';

class LoginTextfield extends StatelessWidget {
  final double width;
  final IconData icon;
  final String hintText;
  const LoginTextfield({
    super.key, required this.width, required this.icon,  required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: width,
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 2
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Icon(icon, color: Colors.black, size: 30),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}