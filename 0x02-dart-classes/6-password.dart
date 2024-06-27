class Password {
  String _password = '';
  Password({required String password}) {
    this._password = password;
  }

  String get password {
    return _password;
  }

  void set password(String? value) {
    _password = value?? '';
  }

  bool isValid() {
    if (this.password.length < 8 || password.length > 16) {
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
