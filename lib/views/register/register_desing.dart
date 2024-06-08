import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  bool _isChecked = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Registro"),
          content: Text("Registrado correctamente"),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
                _clearFields();
              },
            ),
          ],
        );
      },
    );
  }

  void _clearFields() {
    setState(() {
      _nameController.clear();
      _emailController.clear();
      _passwordController.clear();
      _isChecked = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 219, 219),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Registro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nombre", style: textStyle),
            _textFieldGeneral(
              icon: Icons.person_outline,
              controller: _nameController,
            ),
            SizedBox(height: 40.0),
            Text("Correo", style: textStyle),
            _textFieldGeneral(
              icon: Icons.email_outlined,
              controller: _emailController,
            ),
            SizedBox(height: 40.0),
            Text("Contraseña", style: textStyle),
            _textFieldGeneral(
              icon: Icons.password_outlined,
              controller: _passwordController,
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
                Text("Acepto los términos y condiciones", style: textStyle),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                _showAlertDialog(context);
              },
              child: Text("Regístrate"),
            ),
          ],
        ),
      ),
    );
  }
}

class _textFieldGeneral extends StatelessWidget {
  final IconData icon;
  final TextEditingController controller;

  const _textFieldGeneral({
    required this.icon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white54,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
        ),
        onChanged: (value) {},
      ),
    );
  }
}