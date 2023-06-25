import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upc_notes/domain/models/profesores.dart';
import 'package:upc_notes/iu/pages/PruebaListaProfesores.dart';
import '../../domain/controller/controllerProfesores.dart';

class RegistrarProfesores extends StatefulWidget {
  const RegistrarProfesores({super.key});

  @override
  State<RegistrarProfesores> createState() => _RegistrarProfesoresState();
}

class _RegistrarProfesoresState extends State<RegistrarProfesores> {
  ControlProfesores controlP = Get.find();
  bool _mostrarContenedor = false;
  TextEditingController docente = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController telefono = TextEditingController();
  TextEditingController direccion = TextEditingController();

  Widget _buildProfesoresList() {
    return FutureBuilder(
        future: controlP.getProfesoresGral(),
        builder: (context, snapshot) {
          return Obx(() => GridView.builder(
              itemCount: controlP.listaProfesores!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                Profesores profesor = controlP.listaProfesores![index];
                return GestureDetector(
                    onTap: () {},
                    onLongPress: () {},
                    child: Stack(
                      children: [
                        ListaProfesores(
                          docente: profesor.docente,
                          email: profesor.email,
                          telefono: profesor.telefono,
                          //direccion: profesor.direccion
                        )
                      ],
                    ));
              }));
        });
  }

  @override
  Widget build(BuildContext context) {
    ControlProfesores controlP = Get.find();
    //ControlUser controlu = Get.find();
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
            registrarProfesor(context);
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      body: Container(
          //margin: const EdgeInsets.symmetric(horizontal: 5),
          child: _buildProfesoresList()),
    );
  }

  void registrarProfesor(context) {
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
                      "Datos del profesor",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.person_2_outlined,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 12.0),
                    SizedBox(
                      width: 280,
                      child: TextField(
                        controller: docente,
                        decoration: const InputDecoration(
                          hintText: 'Nombre y apellido',
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    //const SizedBox(width: 20)
                  ],
                ),
              ),
              //const SizedBox(height: 12.0),
              const Divider(
                color: Colors.black,
                thickness: 1.0,
                height: 1.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 12.0),
                    SizedBox(
                      width: 280,
                      child: TextField(
                        controller: email,
                        decoration: const InputDecoration(
                          hintText: 'Correo electronico',
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 1.0,
                height: 1.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 12.0),
                    SizedBox(
                      width: 280,
                      child: TextField(
                        controller: telefono,
                        decoration: const InputDecoration(
                          hintText: 'Telefono',
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 1.0,
                height: 1.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 12.0),
                    SizedBox(
                      width: 280,
                      child: TextField(
                        controller: direccion,
                        decoration: const InputDecoration(
                          hintText: 'Direccion',
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 1.0,
                height: 1.0,
              ),
              const SizedBox(height: 23),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                          setState(() {
                            Navigator.pop(context);
                          });
                          controlP
                              .crearProfesor(docente.text, email.text,
                                  telefono.text, direccion.text)
                              .then((value) => {
                                    Get.snackbar('Profesor',
                                        controlP.listaMensajes![0].mensaje,
                                        duration: const Duration(seconds: 2),
                                        icon: const Icon(Icons.info),
                                        shouldIconPulse: true,
                                        backgroundColor:
                                            const Color(0xFFDEE2E6)),
                                    docente.text = "",
                                    email.text = "",
                                    telefono.text = "",
                                    direccion.text = "",
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
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ));
        });
  }

  void cerrarModal(BuildContext context) {
  Navigator.pop(context);
}
}
