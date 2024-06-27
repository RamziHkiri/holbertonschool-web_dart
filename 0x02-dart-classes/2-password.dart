class Password {
  String password='';

  bool isValid() {
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    if (password.contains(RegExp(r'[A-Za-z]')) &&
        password.contains(RegExp(r'[0-9]')))
      return true;
    else
      return false;
  }

  String toString() {
    return "Your Password is: ${this.password}";
  }
}
