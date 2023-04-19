import 'package:flutter/material.dart';
import 'pruebaMenuLateral.dart';
class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7FE1AD),
      //backgroundColor: const Color(0xdee2e6),
      drawer: MenuLateral(
   
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xFF7FE1AD),
      )
    );
  }
}