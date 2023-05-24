import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/controller/controllerApuntes.dart';

class ModificarApuntes extends StatefulWidget {
  //const ModificarApuntes({super.key});
  final String titulo;
  final String descripcion;

  const ModificarApuntes({
    required this.titulo,
    required this.descripcion,
    super.key
  });

  @override
  State<ModificarApuntes> createState() => _ModificarApunteState();
}

class _ModificarApunteState extends State<ModificarApuntes> {
  @override
  Widget build(BuildContext context) {
    ControlApuntes controla = Get.find();
    TextEditingController titulo = TextEditingController(text: widget.titulo);
    TextEditingController descripcion = TextEditingController(text: widget.descripcion);
    return Scaffold(
      backgroundColor: const Color(0xFF7FE1AD),
      appBar: AppBar(
        backgroundColor: const Color(0xFFDEE2E6),
        iconTheme: const IconThemeData(
          color: Colors.black, // establece el color del icono en negro
          size: 30.0,
        ),
        title: const Text(
          "Modificar Apuntes",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
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
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: ElevatedButton(
                        onPressed: () {},
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
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            controla
                                .modApunte(titulo.text, descripcion.text)
                                .then((value) => {
                                      Get.snackbar('Apuntes',
                                          controla.listaMensajes![0].mensaje,
                                          duration: const Duration(seconds: 2),
                                          icon: const Icon(Icons.info),
                                          shouldIconPulse: true,
                                          backgroundColor:
                                              const Color(0xFFDEE2E6)),
                                      titulo.text = "",
                                      descripcion.text = "",
                                      controla.getApuntesGral(),
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
                            'Modificar',
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
  }
}