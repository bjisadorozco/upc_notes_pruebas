import 'package:get/get.dart';
import 'package:upc_notes/iu/pages/pruebaListarAsignatura.dart';
import '../../data/services/peticionesAsignatura.dart';
import '../models/asignaturas.dart';
import '../models/utiles.dart';

class ControlAsignatura extends GetxController {
  final Rxn<List<Mensajes>> _listarMensajes = Rxn<List<Mensajes>>([]);
  final Rxn<List<Asignatura>> _listaAsignaturas = Rxn<List<Asignatura>>([]);

  ControlAsignatura(){
    _listaAsignaturas.value = [];
  }
  Future<void> crearAsignatura(String nombre, String profesor, String salon, String detalles) async {
    _listarMensajes.value = await PeticionesAsignaturas.registrarAsignaturas(nombre, profesor, salon, detalles);
  }

  Future<void> delAsignatura(String nombre) async {
    _listarMensajes.value = await PeticionesAsignaturas.eliminarAsignatura(nombre);
    await getAsignaturaGral();
  }
  Future<void> modAsignatura(String nombre, String profesor, String salon, String detalles) async {
    _listarMensajes.value = await PeticionesAsignaturas.modificarAsignatura(nombre, profesor, salon, detalles);
    await getAsignaturaGral();
  }
  Future<void> getAsignaturaGral() async {
    _listaAsignaturas.value = await PeticionesAsignaturas.getListAsignatura();
  }

  List<Mensajes>? get listaMensajes => _listarMensajes.value;
  List<Asignatura>? get listarAsignaturas => _listaAsignaturas.value;
}