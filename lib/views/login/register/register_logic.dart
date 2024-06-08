import 'package:flutter/material.dart';
import 'package:store/views/login/register/components/register_Dialog.dart';


void submitForm(
    BuildContext context,
    GlobalKey<FormState> formKey,
    TextEditingController nombreController,
    TextEditingController correoController,
    TextEditingController contrasenaController,
    bool condiciones) {
  if (formKey.currentState!.validate()) {
    if (condiciones &&
        nombreController.text.isNotEmpty &&
        correoController.text.isNotEmpty &&
        contrasenaController.text.isNotEmpty) {
      showDialogSuccess(
          context); // Llama a la función de éxito desde register_logic.dart
    } else {
      showDialogError(
          context); // Llama a la función de error desde register_logic.dart
    }
  }
}
