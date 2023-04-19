import 'package:flutter/material.dart';

class IniciarSesion extends StatelessWidget {
  const IniciarSesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7FE1AD),
      body: Column(
        children: [
          Align(
             alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 1.0),
                      child: Image.asset(
                        'assets/logo.png',
                        fit: BoxFit.contain,
                        width: 250,
                        height: 250,), 
              ),
          ),
          const SizedBox(height: 1.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Iniciar Sesion",
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),   
            ],
          )
        ],
      ),
    );
  }
}