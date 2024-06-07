import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double radius;

  const Logo({
    super.key,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: const AssetImage('assets_images/logo.jpeg'),
    );
  }
}
