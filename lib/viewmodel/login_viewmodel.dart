import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  void onLogin(BuildContext context) {
    showSnackbar(context, 'Login clicado');
  }

  void onSignUp(BuildContext context) {
    showSnackbar(context, 'Criar conta clicado');
  }

  void onForgotPassword(BuildContext context) {
    showSnackbar(context, 'Esqueceu a senha clicado');
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: Duration(seconds: 2)),
    );
  }
}
