class RegisterController {

  Future<bool> register(String name, String email, String password, String confirmPassword) async {
    if (name.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      return false;
    }

    if (!isValidName(name) || name.length < 3 || name.length > 50 || name.contains('"')) {
      return false;
    }

    if (!isValidEmail(email)) {
      return false;
    }

    if (password != confirmPassword || password.length < 8 || password.length > 16 || password.contains(' ') || !isValidPassword(password)) {
      return false;
    }
    
    return true;
  }
}

bool isValidName(String name) {
  final RegExp regex = RegExp(
    r"^[a-zA-Z]+(([',.\- ][a-zA-Z ])?[a-zA-Z]*)*$"
  );
  return regex.hasMatch(name);
}

bool isValidEmail(String email) {
  final RegExp regex = RegExp(
    r'^[a-zA-Z0-9.a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$'
  );
  return regex.hasMatch(email);
}


bool isValidPassword(String password) {
  final RegExp specialCharactersRegex = RegExp(r'[@#%&*!]');
  return specialCharactersRegex.hasMatch(password);
}
