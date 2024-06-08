import 'package:flutter/material.dart';

void showDialogSuccess(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Success", style: TextStyle(color: Colors.green)),
        content: const Text("Formulario enviado con éxito"),
        actions: <Widget>[
          TextButton(
            child: const Text("Cerrar"),
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.red, // Cambiar el color del texto
            ),
          ),
        ],
      );
    },
  );
}

void showDialogError(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Error", style: TextStyle(color: Colors.red)),
        content: const Text(
            "debes aceptar las condiciones y llenar todos los campos"),
        actions: <Widget>[
          TextButton(
            child: const Text("Cerrar"),
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.red, // Cambiar el color del texto
            ),
          ),
        ],
      );
    },
  );
}
