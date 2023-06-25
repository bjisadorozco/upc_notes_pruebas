import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upc_notes/iu/pages/pruebaModificarProfesor.dart';
import '../../domain/controller/controllerProfesores.dart';

class ListaProfesores extends StatelessWidget {
  const ListaProfesores({
    super.key,
    required this.docente,
    required this.email,
    required this.telefono,
    //required this.direccion
  });
  final String docente;
  final String email;
  final String telefono;
  //final String direccion;

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
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.import_contacts),
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
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.email),
                          Text(
                            email,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
