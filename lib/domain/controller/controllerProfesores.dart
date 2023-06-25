import 'package:get/get.dart';
import 'package:upc_notes/data/services/peticionesProfesores.dart';
import '../models/profesores.dart';
import '../models/utiles.dart';

class ControlProfesores extends GetxController {
  final Rxn<List<Mensajes>> _listarMensajes = Rxn<List<Mensajes>>([]);
  final Rxn<List<Profesores>> _listarProfesores = Rxn<List<Profesores>>([]);
  
  ControlProfesores(){
    _listarProfesores.value = [];
  }
  Future<void> delProfesor(String docente) async {
    _listarMensajes.value = await PeticionesProfesores.eliminarProfesor(docente);
    await getProfesoresGral();
  }
  Future<void> modProfesor(String docente, String email, String telefono, String direccion) async {
    _listarMensajes.value = await PeticionesProfesores.modificarProfesor(docente, email, telefono, direccion);
    await getProfesoresGral();
  }
  Future<void> getProfesoresGral() async {
    _listarProfesores.value = await PeticionesProfesores.getListProfesores();
    print(_listarProfesores.value);
  }

  Future<void> crearProfesor(String docente, String email, String telefono, String direccion) async {
    _listarMensajes.value = await PeticionesProfesores.registrarProfesor(docente, email, telefono, direccion);
  }
  List<Mensajes>? get listaMensajes => _listarMensajes.value;
  List<Profesores>? get listaProfesores => _listarProfesores.value;
}