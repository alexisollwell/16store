import 'package:flutter/material.dart';

class BotonChido extends StatelessWidget {
  final String texto;
  final Color? color;
  final void Function() alPrecionar;
  final double? ancho;
  const BotonChido(
      {super.key,
      required this.texto,
      this.color,
      required this.alPrecionar,
      this.ancho});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: alPrecionar,
      child: Container(
          height: 50,
          width: ancho ?? 120,
          decoration: BoxDecoration(
              color: color ?? Colors.blue,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 2)),
          child: Center(
            child: Text(
              texto,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          )),
    );
  }
}
