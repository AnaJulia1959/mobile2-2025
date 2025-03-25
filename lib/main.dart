import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/login_screen.dart';
import 'viewmodel/login_viewmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      key: Key('multi-provider'), // Adicionada Key
      providers: [
        ChangeNotifierProvider(
          key: Key('login-viewmodel-provider'), // Adicionada Key
          create: (_) => LoginViewModel(),
        ),
      ],
      child: MaterialApp(
        key: Key('material-app'), // Adicionada Key
        debugShowCheckedModeBanner: false,
        title: 'Flutter Acessível',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
