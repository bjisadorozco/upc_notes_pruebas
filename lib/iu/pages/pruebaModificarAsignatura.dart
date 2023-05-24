import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/controller/controllerAsignaturas.dart';

class ModificarAsignatura extends StatefulWidget {
  final String nombre;
  final String profesor;
  final String salon;
  final String detalles;

  const ModificarAsignatura({
    required this.nombre,
    required this.profesor,
    required this.salon,
    required this.detalles,
    super.key});

  @override
  State<ModificarAsignatura> createState() => _ModificarAsignaturaState();
}

class _ModificarAsignaturaState extends State<ModificarAsignatura> {
  @override
  Widget build(BuildContext context) {
    ControlAsignatura controlA = Get.find();
  TextEditingController nombre = TextEditingController(text: widget.nombre);
  TextEditingController profesor = TextEditingController(text: widget.profesor);
  TextEditingController salon = TextEditingController(text: widget.salon);
  TextEditingController detalles = TextEditingController(text: widget.detalles);
    return Scaffold(
      backgroundColor: const Color(0xFF7FE1AD),
        appBar: AppBar(
          backgroundColor: const Color(0xFFDEE2E6),
          iconTheme: const IconThemeData(
            color: Colors.black,
            size: 30.0,
          ),
          title: const Text(
            "Modificar asignatura",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    width: double.infinity,
                    height: 330,
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                SizedBox(width: 8.0),
                                Text(
                                  "Datos básicos",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 12.0),
                          //const SizedBox(height: 4.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.import_contacts,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 12.0),
                                SizedBox(
                                  width: 280,
                                  child: TextField(
                                    controller: nombre,
                                    decoration: InputDecoration(
                                      hintText: 'Nombre de la asignatura',
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                          //const SizedBox(height: 10),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                            height: 1.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person_2_outlined,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 12.0),
                                SizedBox(
                                  width: 280,
                                  child: TextField(
                                    controller: profesor,
                                    decoration: InputDecoration(
                                      hintText: 'Nombre del profesor',
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                          //const SizedBox(height: 10),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                            height: 1.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 12.0),
                                SizedBox(
                                  width: 280,
                                  child: TextField(
                                    controller: salon,
                                    decoration: InputDecoration(
                                      hintText: 'Salon de clases',
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                          //const SizedBox(height: 10),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                            height: 1.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.subject,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 12.0),
                                SizedBox(
                                  width: 280,
                                  child: TextField(
                                    controller: detalles,
                                    decoration: InputDecoration(
                                      hintText: 'Detalles',
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                            height: 1.0,
                          ),
                          const SizedBox(height: 26),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFF7FE1AD),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        await controlA.crearAsignatura(
                                                nombre.text,
                                                profesor.text,
                                                salon.text,
                                                detalles.text)
                                            .then((value) => {
                                                  Get.snackbar(
                                                      'Asignatura',
                                                      controlA.listaMensajes![0]
                                                          .mensaje,
                                                      duration: const Duration(
                                                          seconds: 2),
                                                      icon: const Icon(
                                                          Icons.info),
                                                      shouldIconPulse: true,
                                                      backgroundColor:
                                                          const Color(
                                                              0xFFDEE2E6)),                                                  
                                                  nombre.text = "",
                                                  profesor.text = "",
                                                  salon.text = "",
                                                  detalles.text = "",
                                                });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFF7FE1AD),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          side: const BorderSide(
                                            color: Colors.black,
                                            width: 1.0,
                                          ), // ajusta el radio según sea necesario
                                        ),
                                      ),
                                      child: const Text(
                                        'Nodificar',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          )
                        ]),
                  ),
                ),
    );
  }
}