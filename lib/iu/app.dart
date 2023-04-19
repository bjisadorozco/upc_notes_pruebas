import 'package:flutter/material.dart';
import 'package:upc_notes/iu/pages/IniciarSesion.dart';
import 'pages/prueba.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UPC NOTES',
      //theme: ThemeData(primaryColor: const Color(0xFF7FE1AD)),
      home: Iniciar(),
    );
  }
}