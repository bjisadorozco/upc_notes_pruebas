import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/controller/controllerApuntes.dart';

class Apuntes extends StatefulWidget {
  const Apuntes({super.key});

  @override
  State<Apuntes> createState() => _ApuntesState();
}

class _ApuntesState extends State<Apuntes> {
  bool _mostrarContenedor = false;
  ControlApuntes controla = Get.find();
  TextEditingController titulo = TextEditingController();
  TextEditingController descripcion = TextEditingController();

// @override
//   void dispose() {S
//     _tituloController.dispose();
//     _contenidoController.dispose();
//     super.dispose();
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7FE1AD),
      appBar: AppBar(
        backgroundColor: const Color(0xFFDEE2E6),
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 30.0,
        ),
        title: const Text(
          "Apuntes",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        // elevation: 1.0,
        // bottom: PreferredSize(
        //   preferredSize: const Size.fromHeight(4.0),
        //   child: Container(
        //     color: Colors.black,
        //     height: 2.0,
        //     child: const SizedBox(),
        //     ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _mostrarContenedor = true;
            registrarTitulo(context);
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      body: GridView.count(
        crossAxisCount: 2, // número de columnas que quieres mostrar
        padding: const EdgeInsets.all(10), // margen alrededor del GridView
        children: [
          // aquí irían los widgets que deseas mostrar en el GridView, por ejemplo:
          Container(
            color: Colors.red,
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.blue,
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.green,
            height: 50,
            width: 50,
          ),
          // ...
        ],
      ),
    );
  }

  void registrarTitulo(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Center(
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  width: double.infinity,
                  height: 400,
                  //height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: const Color(0xFFDEE2E6),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                        child: Text(
                          "Datos de apuntes",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextField(
                          controller: titulo,
                          decoration: const InputDecoration(
                            hintText: 'Titulo',
                            border: InputBorder.none,
                          ),
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      //SizedBox(height: 10),
                      const Divider(
                        color: Colors.black,
                        thickness: 1.0,
                        height: 1.0,
                      ),
                      Expanded(
                        //height: 200, // ajuste el tamaño de esta caja según sea necesario
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: TextField(
                            controller: descripcion,
                            maxLines: null,
                            expands: true,
                            decoration: const InputDecoration(
                              hintText: 'Apuntes',
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(height: 60),
                      const Divider(
                        color: Colors.black,
                        thickness: 1.0,
                        height: 1.0,
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _mostrarContenedor = false;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF7FE1AD),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      ), // ajusta el radio según sea necesario
                                    ),
                                  ),
                                  child: const Text(
                                    'Cancelar',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      controla
                                          .crearApunte(
                                              titulo.text, descripcion.text)
                                          .then((value) => {
                                                Get.snackbar(
                                                    'Estudiante',
                                                    controla.listaMensajes![0]
                                                        .mensaje,
                                                    duration: const Duration(
                                                        seconds: 2),
                                                    icon:
                                                        const Icon(Icons.info),
                                                    shouldIconPulse: true,
                                                    backgroundColor:
                                                        const Color(
                                                            0xFFDEE2E6)),
                                                setState(() {
                                                  _mostrarContenedor = false;
                                                }),
                                                titulo.text = "",
                                                descripcion.text = "",
                                              });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF7FE1AD),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: const BorderSide(
                                          color: Colors.black,
                                          width: 1.0,
                                        ), // ajusta el radio según sea necesario
                                      ),
                                    ),
                                    child: const Text(
                                      'Guardar',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  )),
                            ]),
                      )
                    ],
                  )),
            ),
          );
        });
  }
}
