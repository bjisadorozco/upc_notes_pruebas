import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upc_notes/domain/models/profesores.dart';
import 'package:upc_notes/iu/pages/PruebaListaProfesores.dart';

import '../../domain/controller/controllerProfesores.dart';
import 'listarProfesores.dart';

class RegistroDocentes extends StatefulWidget {
  const RegistroDocentes({super.key});

  @override
  State<RegistroDocentes> createState() => _RegistroDocentesState();
}

class _RegistroDocentesState extends State<RegistroDocentes> {
  @override
  ControlProfesores controlD = Get.find();
  TextEditingController docente = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController telefono = TextEditingController();
  TextEditingController direccion = TextEditingController();

  Widget _buildProfesoresList() {
    return FutureBuilder(
        future: controlD.getProfesoresGral(),
        builder: (context, snapshot) {
          return Obx(() => GridView.builder(
              itemCount: controlD.listaProfesores!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                Profesores profesor = controlD.listaProfesores![index];
                return GestureDetector(
                    onTap: () {
                      editarProfesor(profesor);
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext bc) {
                            return SafeArea(
                                child: Center(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: const [
                                          SizedBox(width: 8.0),
                                          Text(
                                            "Datos del profesor",
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
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
                                              controller: docente,
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.email,
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 12.0),
                                          SizedBox(
                                            width: 280,
                                            child: TextField(
                                              controller: email,
                                              decoration: InputDecoration(
                                                hintText: 'Correo Electronico',
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 12.0),
                                          SizedBox(
                                            width: 280,
                                            child: TextField(
                                              controller: telefono,
                                              decoration: InputDecoration(
                                                hintText: 'Telefono',
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
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
                                              controller: direccion,
                                              decoration: InputDecoration(
                                                hintText: 'Direccion',
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
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 10, 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFF7FE1AD),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
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
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  controlD
                                                      .modProfesor(
                                                          docente.text,
                                                          email.text,
                                                          telefono.text,
                                                          direccion.text)
                                                      .then((value) => {
                                                            Get.snackbar(
                                                                'Profesor',
                                                                controlD
                                                                    .listaMensajes![
                                                                        0]
                                                                    .mensaje,
                                                                duration:
                                                                    const Duration(
                                                                        seconds:
                                                                            2),
                                                                icon: const Icon(
                                                                    Icons.info),
                                                                shouldIconPulse:
                                                                    true,
                                                                backgroundColor:
                                                                    const Color
                                                                            .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255)),
                                                            // docente.text = "",
                                                            // email.text = "",
                                                            // telefono.text = "",
                                                            // direccion.text = "",
                                                          });
                                                  controlD.getProfesoresGral();
                                                  setState(() {
                                                    Navigator.pop(context);
                                                  });
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFF7FE1AD),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
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
                                              ),
                                            ),
                                          ]),
                                    )
                                  ]),
                            ));
                          });
                    },
                    onLongPress: () {
                      String mensaje =
                          "¿Estás seguro que deseas eliminar este Profesor?";
                      Get.defaultDialog(
                        title: "Eliminar Profesor",
                        middleText: mensaje,
                        textCancel: "Cancelar",
                        textConfirm: "Eliminar",
                        confirmTextColor: Colors.black,
                        buttonColor: const Color(0xFF7FE1AD),
                        cancelTextColor: Colors.black,
                        onCancel: () => {Get.back()},
                        onConfirm: () {
                          String id = controlD.listaProfesores![index].docente;
                          controlD
                              .delProfesor(profesor.docente)
                              .then((value) => {
                                    Get.snackbar('Profesor',
                                        controlD.listaMensajes![0].mensaje,
                                        duration: const Duration(seconds: 3),
                                        icon: const Icon(Icons.info),
                                        shouldIconPulse: true,
                                        backgroundColor:
                                            Color.fromARGB(255, 255, 255, 255))
                                  });
                          controlD.getProfesoresGral();
                          Get.back();
                        },
                      );
                    },
                    child: Stack(
                      children: [
                        ListaProfesoresD(
                          docente: profesor.docente,
                          correo: profesor.email,
                          telefono: profesor.telefono,
                          direccion: profesor.direccion,
                        )
                      ],
                    ));
              }));
        });
  }

  void editarProfesor(Profesores profesor) {
    setState(() {
      docente.text = profesor.docente;
      email.text = profesor.email;
      telefono.text = profesor.telefono;
      direccion.text = profesor.direccion;
    });
  }

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
            "Profesores",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              docente.clear();
              email.clear();
              telefono.clear();
              direccion.clear();
              RegistroDocentes(context);
            });
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.black,
        ),
        body: Container(
            //margin: const EdgeInsets.symmetric(horizontal: 5),
            child: _buildProfesoresList()));
  }

  void RegistroDocentes(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
              child: Center(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    SizedBox(width: 8.0),
                    Text(
                      "Datos del Profesor",
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
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.person_2_outlined,
                      color: Color.fromARGB(255, 8, 7, 7),
                    ),
                    SizedBox(width: 12.0),
                    SizedBox(
                      width: 280,
                      child: TextField(
                        controller: docente,
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
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    SizedBox(width: 12.0),
                    SizedBox(
                      width: 280,
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                          hintText: 'Correo',
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
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    SizedBox(width: 12.0),
                    SizedBox(
                      width: 280,
                      child: TextField(
                        controller: telefono,
                        decoration: InputDecoration(
                          hintText: 'Telefono',
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
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                        controller: direccion,
                        decoration: InputDecoration(
                          hintText: 'Direccion',
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
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
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
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        if (docente.text.isEmpty ||
                            email.text.isEmpty ||
                            telefono.text.isEmpty ||
                            direccion.text.isEmpty) {
                          String mensaje = "Por favor ingrese todos los datos";
                          Get.defaultDialog(
                            title: "Campos Incompletos",
                            middleText: mensaje,
                            textCancel: "Cancelar",
                            textConfirm: "Ok",
                            confirmTextColor: Colors.black,
                            buttonColor: const Color(0xFF7FE1AD),
                            cancelTextColor: Colors.black,
                            onCancel: () => {Get.back()},
                            onConfirm: () {
                              Get.back();
                            },
                          );
                        } else if (docente.text.isNotEmpty ||
                            email.text.isNotEmpty ||
                            telefono.text.isNotEmpty ||
                            direccion.text.isNotEmpty) {
                          controlD
                              .crearProfesor(docente.text, email.text,
                                  telefono.text, direccion.text)
                              .then((value) => {
                                    Get.snackbar('Profesor',
                                        controlD.listaMensajes![0].mensaje,
                                        duration: const Duration(seconds: 2),
                                        icon: const Icon(Icons.info),
                                        shouldIconPulse: true,
                                        backgroundColor:
                                            Color.fromARGB(255, 255, 255, 255)),
                                    docente.text = "",
                                    email.text = "",
                                    telefono.text = "",
                                    direccion.text = "",
                                  });
                          controlD.getProfesoresGral();
                          setState(() {
                            Navigator.pop(context);
                          });
                        }

                        //Get.back();
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
                    ),
                  ),
                ]),
              )
            ]),
          ));
        });
  }
}
