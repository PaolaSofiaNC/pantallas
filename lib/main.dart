import 'package:flutter/material.dart';
import 'package:pantallas/screens/principal.dart';
import 'package:pantallas/screens/prueba.dart';
import 'package:pantallas/screens/registro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Registro(),
      ),
    );
  }
}
