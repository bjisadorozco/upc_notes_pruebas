import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upc_notes/iu/pages/pruebaModificarProfesor.dart';
import '../../domain/controller/controllerProfesores.dart';

class ListProfesores extends StatefulWidget {
  const ListProfesores({super.key});

  @override
  State<ListProfesores> createState() => _ListProfesoresState();
}

class _ListProfesoresState extends State<ListProfesores> {
   ControlProfesores controlP = Get.find();
  @override
  Widget build(BuildContext context) {
    //ControlProfesores controlP = Get.find();
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
      body: Obx(() => ListView.builder(
        itemCount: controlP.listaProfesores!.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onLongPress: (){
                  String mensaje = "¿Estás seguro que deseas eliminar este Profesor?";
                  Get.defaultDialog(
                  title: "Eliminar profesor",
                  middleText: mensaje,
                  textCancel: "Cancelar",
                  textConfirm: "Eliminar",
                  confirmTextColor: Colors.black,
                  buttonColor: const Color(0xFF7FE1AD),
                  cancelTextColor: Colors.black,
                  onCancel: () => {},
                  onConfirm: () {
                   String id =
                        controlP.listaProfesores![index].idProfe.toString();
                        controlP.delProfesor(int.parse(id)).then((value) => {
                        Get.snackbar('Profesores',
                        controlP.listaMensajes![0].mensaje,
                        duration: const Duration(seconds: 3),
                        icon: const Icon(Icons.info),
                        shouldIconPulse: true,
                        backgroundColor: const Color(0xFFDEE2E6))    
                        }
                        );
                        controlP.getProfesoresGral();
                        Get.back();
                    },
                );
              },
               onTap: (){
                  Get.to(() => ModificarProfesor(
                          //idProfe: controlP.listaProfesores![index].idProfe,
                          docente: controlP.listaProfesores![index].docente,
                          email: controlP.listaProfesores![index].email,
                          telefono: controlP.listaProfesores![index].telefono,
                          direccion: controlP.listaProfesores![index].direccion,
                          ));
                },
            title: Text(
                controlP.listaProfesores![index].docente),
            subtitle: Text(controlP.listaProfesores![index].email),
          );
        },
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/addProfesores");
        //   Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => registrarProfesores()),
        // );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      
    );
  }
}