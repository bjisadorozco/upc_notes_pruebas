import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upc_notes/domain/controller/controllerAsignaturas.dart';
import 'package:upc_notes/iu/pages/pruebaModificarAsignatura.dart';
import 'package:upc_notes/iu/pages/pruebaRegistrarAsignatura.dart';

class ListarAsignaturas extends StatefulWidget {
  const ListarAsignaturas({super.key});

  @override
  State<ListarAsignaturas> createState() => _ListarAsignaturasState();
}

class _ListarAsignaturasState extends State<ListarAsignaturas> {  
  ControlAsignatura controla = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7FE1AD),
      appBar: AppBar(
        title: const Text('Lista de asignaturas', style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,        
        ),),
        backgroundColor: const Color(0xFFDEE2E6),
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 25.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            //Get.toNamed("/addAsignaturas");
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegistrarAsignaturas()),
          );
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.black,
        ),   
      body: Obx(() => ListView.builder(itemCount: controla.ListarAsignaturas!.length,
       itemBuilder: (BuildContext context, int index) {
         return ListTile(
            onLongPress: (){
                  String mensaje = "¿Estás seguro que deseas eliminar esta asignatura?";
                  Get.defaultDialog(
                  title: "Eliminar asignatura",
                  middleText: mensaje,
                  textCancel: "Cancelar",
                  textConfirm: "Eliminar",
                  confirmTextColor: Colors.black,
                  buttonColor: const Color(0xFF7FE1AD),
                  cancelTextColor: Colors.black,
                  onCancel: () => {},
                  onConfirm: () {
                   String nombre =
                        controla.ListarAsignaturas![index].nombre;
                        controla.delProfesor(nombre).then((value) => {
                        Get.snackbar('Asignaturas',
                        controla.listaMensajes![0].mensaje,
                        duration: const Duration(seconds: 3),
                        icon: const Icon(Icons.info),
                        shouldIconPulse: true,
                        backgroundColor: const Color(0xFFDEE2E6))    
                        }
                        );
                        controla.getAsignaturaGral();
                        Get.back();
                    },
                );
              },
               onTap: (){
                  Get.to(() => ModificarAsignatura(
                          //idProfe: controlP.listaProfesores![index].idProfe,
                          nombre: controla.ListarAsignaturas![index].nombre,
                          profesor: controla.ListarAsignaturas![index].profesor,
                          salon: controla.ListarAsignaturas![index].salon,
                          detalles: controla.ListarAsignaturas![index].detalles,
                          ));
                },
            title: Text(
                controla.ListarAsignaturas![index].nombre),
            subtitle: Text(controla.ListarAsignaturas![index].profesor),
         );
       }),     
      ),        
    );
  }
}