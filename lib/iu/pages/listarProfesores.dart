import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upc_notes/iu/pages/pruebaModificarProfesor.dart';
import '../../domain/controller/controllerProfesores.dart';

class ListaProfesoresD extends StatelessWidget {
  const ListaProfesoresD(
      {super.key,
      required this.docente,
      required this.correo,
      required this.telefono,
      required this.direccion});
  final String docente;
  final String correo;
  final String telefono;
  final String direccion;

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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.person),
                            Text(
                              docente,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /*Row(
                      children: <Widget>[
                        Icon(Icons.email),
                        Text(
                          correo,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),*/
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.phone),
                            Text(
                              telefono,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.location_on),
                            Text(
                              direccion,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
