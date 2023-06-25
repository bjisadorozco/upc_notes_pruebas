import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/controller/controllerProfesores.dart';

class ModificarProfesor extends StatefulWidget {
  final String docente;
  final String email;
  final String telefono;
  final String direccion;

  const ModificarProfesor(
      {required this.docente,
      required this.email,
      required this.telefono,
      required this.direccion,
      super.key});

  @override
  State<ModificarProfesor> createState() => _ModificarProfesorState();
}

class _ModificarProfesorState extends State<ModificarProfesor> {
  @override
  Widget build(BuildContext context) {
    ControlProfesores controlP = Get.find();
    TextEditingController docente = TextEditingController(text: widget.docente);
    TextEditingController email = TextEditingController(text: widget.email);
    TextEditingController telefono =
        TextEditingController(text: widget.telefono);
    TextEditingController direccion =
        TextEditingController(text: widget.direccion);
    return Scaffold(
      backgroundColor: const Color(0xFF7FE1AD),
      appBar: AppBar(
        backgroundColor: const Color(0xFFDEE2E6),
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 30.0,
        ),
        title: const Text(
          "Modificar Profesor",
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
          height: 325,
          decoration: BoxDecoration(
            color: const Color(0xFFDEE2E6),
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
          ),
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
                        controlP
                            .modProfesor(docente.text, email.text,
                                telefono.text, direccion.text)
                            .then((value) => {
                                  Get.snackbar('Profesor',
                                      controlP.listaMensajes![0].mensaje,
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
                        'Modificar',
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
        ),
      ),
    );
  }
}
