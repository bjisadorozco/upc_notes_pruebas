import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upc_notes/iu/pages/PruebaRegistrarProfesores.dart';
import 'package:upc_notes/iu/pages/pruebaIniciarSesion.dart';
import 'package:upc_notes/iu/pages/pruebaPrincipal.dart';
import 'package:upc_notes/iu/pages/pruebaRegistrarApuntes.dart';
import 'package:upc_notes/iu/pages/pruebaRegistrate.dart';
import 'package:upc_notes/iu/pages/registrarProfesores.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UPC NOTES',
      //theme: ThemeData(primaryColor: const Color(0xFF7FE1AD)),
      //home: IniciarSesion(),
      initialRoute: '/login',
      routes: {
        "/login": (context) => const IniciarSesion(),
        "/register": (context) => const RegistratePrueba(),
        "/home": (context) => const Principal(),
        "/addApuntes": (context) => const RegistrarApuntes(),
        "/addProfesores": (context) => const RegistroDocentes(),
      },
    );
  }
}