import 'package:flutter/material.dart';
import 'package:meu_primeiro_projeto/screens/form_screen.dart';
import 'screens/inicial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InicialScreen(),
    );
  }
}
