import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/login_viewmodel.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<LoginViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Login Acessível'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Campo de Usuário
            Semantics(
              label: 'Campo de usuário',
              hint: 'Digite seu usuário',
              child: TextField(
                key: Key('username-field'), 
                decoration: InputDecoration(
                  labelText: 'Usuário',
                  hintText: 'Digite seu usuário',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Campo de Senha
            Semantics(
              label: 'Campo de senha',
              hint: 'Digite sua senha',
              child: TextField(
                key: Key('password-field'), 
                decoration: InputDecoration(
                  labelText: 'Senha',
                  hintText: 'Digite sua senha',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 24),

            // Botão de Login
            Semantics(
              //label: 'Entrar',
              child: ElevatedButton(
                key: Key('login-button'), 
                onPressed: () => viewModel.onLogin(context),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(30, 30),
                  maximumSize: Size(30, 30),
                ),
                child: Text('Entrar'),
              ),
            ),

            SizedBox(height: 16),

            // Link para Criar Conta
            Semantics(
              label: 'Criar uma nova conta',
              button: true,
              child: TextButton(
                key: Key('signup-button'), 
                onPressed: () => viewModel.onSignUp(context),
                child: Text('Criar conta'),
              ),
            ),

            // Link para Esqueci Minha Senha
            Semantics(
              label: 'Recuperar senha',
              button: true,
              child: TextButton(
                key: Key('forgot-password-button'), 
                onPressed: () => viewModel.onForgotPassword(context),
                child: Text('Esqueci minha senha'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
