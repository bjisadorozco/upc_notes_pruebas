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
      drawer: const MenuLateral(),
      appBar: AppBar(
        backgroundColor: const Color(0xFF7FE1AD),
        foregroundColor: Colors.black,
        title: const Text(
          "Bienvenidos",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                  child: Container(
                      alignment: Alignment.topCenter,
                      height: 155,
                      width: 350,
                      color: const Color(0xFFDEE2E6),
                      child: Column(
                        children: [
                          Text(
                            'Asignaturas',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            ),
                          Center(
                            child: Text(
                              '6',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Container(
                      alignment: Alignment.topCenter,
                      height: 155,
                      width: 350,
                      color: const Color(0xFFDEE2E6),
                      child: Column(
                        children: [
                          Text(
                            'Profesores',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            ),
                          Center(
                            child: Text(
                              '4',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(child: Container(
                      alignment: Alignment.topCenter,
                      height: 155,
                      width: 350,
                      color: const Color(0xFFDEE2E6),
                      child: Column(
                        children: [
                          Text(
                            'Apuntes',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            ),
                          Center(
                            child: Text(
                              '6',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(child: Container(
                      alignment: Alignment.topCenter,
                      height: 155,
                      width: 350,
                      color: const Color(0xFFDEE2E6),
                      child: Column(
                        children: [
                          Text(
                            'Objetivo',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            ),
                          Center(
                            child: Text(
                              '4.0',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
