import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upc_notes/iu/pages/pruebaModificarApuntes.dart';
import 'package:upc_notes/iu/pages/pruebaRegistrarApuntes.dart';

import '../../domain/controller/controllerApuntes.dart';

class ListaApuntes extends StatelessWidget {
  const ListaApuntes({
    super.key, 
    required this.titulo, 
    required this.descripcion,
  });
  final String titulo;
  final String descripcion;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          height: 170,
          width: 167,
          color: const Color(0xFFDEE2E6),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    titulo,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        descripcion,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
