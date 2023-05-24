import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upc_notes/iu/pages/pruebaModificarApuntes.dart';
import 'package:upc_notes/iu/pages/pruebaRegistrarApuntes.dart';

import '../../domain/controller/controllerApuntes.dart';

class ListaApuntes extends StatefulWidget {
  const ListaApuntes({super.key});

  @override
  State<ListaApuntes> createState() => _ListaApuntesState();
}

class _ListaApuntesState extends State<ListaApuntes> {
  ControlApuntes controla = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7FE1AD),
      appBar: AppBar(
        backgroundColor: const Color(0xFFDEE2E6),
        iconTheme: const IconThemeData(
          color: Colors.black, // establece el color del icono en negro
          size: 30.0, // establece el tamaño del icono en 4
        ),
        title: const Text(
          "Lista de apuntes",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/addApuntes");
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      body: Obx(() => ListView.builder(
        itemCount: controla.listaApuntes!.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onLongPress: (){
                  String mensaje = "¿Estás seguro que deseas eliminar este Apunte?";
                  Get.defaultDialog(
                  title: "Eliminar apunte",
                  middleText: mensaje,
                  textCancel: "Cancelar",
                  textConfirm: "Eliminar",
                  confirmTextColor: Colors.black,
                  buttonColor: const Color(0xFF7FE1AD),
                  cancelTextColor: Colors.black,
                  onCancel: () => {},
                  onConfirm: () {
                   String titulo =
                        controla.listaApuntes![index].titulo;
                        controla.delApunte(titulo).then((value) => {
                        Get.snackbar('Apuntes',
                        controla.listaMensajes![0].mensaje,
                        duration: const Duration(seconds: 3),
                        icon: const Icon(Icons.info),
                        shouldIconPulse: true,
                        backgroundColor: const Color(0xFFDEE2E6))    
                        }
                        );
                        controla.getApuntesGral();
                        Get.back();
                    },
                );
              },
               onTap: (){
                  Get.to(() => ModificarApuntes(
                          titulo: controla.listaApuntes![index].titulo,
                          descripcion: controla.listaApuntes![index].descripcion,
                          ));
                },
            title: Text(
                controla.listaApuntes![index].titulo),
            subtitle: Text(controla.listaApuntes![index].descripcion),
          );
        },
      ),
      ),
    );
  }
}
