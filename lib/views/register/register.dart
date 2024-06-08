import 'package:flutter/material.dart';
import 'package:store/views/register/components/register_textfield.dart';
import 'package:store/views/register/register_logic.dart';

class RegistroScreen extends StatefulWidget {
  @override
  _RegistroScreenState createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController correoController = TextEditingController();
  final TextEditingController contrasenaController = TextEditingController();
  bool condiciones = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const Text('Registro', style: TextStyle(fontSize: 20)),
              RegisterTextField(
                width: double.infinity,
                icon: Icons.person,
                hintText: 'Nombre',
                controller: nombreController,
              ),
              Spacer(),
              const Text('Correo', style: TextStyle(fontSize: 20)),
              RegisterTextField(
                width: double.infinity,
                icon: Icons.email,
                hintText: 'Correo',
                controller: correoController,
              ),
              Spacer(),
              const Text('Contraseña', style: TextStyle(fontSize: 20)),
              RegisterTextField(
                width: double.infinity,
                icon: Icons.lock,
                hintText: 'Contraseña',
                controller: contrasenaController,
              ),
              Spacer(),
              CheckboxListTile(
                title: const Text("Aceptar condiciones"),
                value: condiciones,
                onChanged: (newValue) {
                  setState(() {
                    condiciones = newValue ?? false;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              Spacer(),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => submitForm(context, _formKey, nombreController,
                    correoController, contrasenaController, condiciones),
                child: const Text('Registrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}