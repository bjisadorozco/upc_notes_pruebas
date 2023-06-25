import 'package:get/get.dart';
import '../../data/services/peticionesEstudiante.dart';
import '../models/estudiante.dart';
import '../models/utiles.dart';

class ControlEstudiante extends GetxController {
  final Rxn<List<Mensajes>> _listarMensajes = Rxn<List<Mensajes>>([]);
  final Rxn<List<Estudiante>> _listarEstudiante = Rxn<List<Estudiante>>([]);

  Future<void> crearEstudiante(String usuario, String e, String p) async {
    _listarMensajes.value = await PeticionesEstudiante.registrarEstudiante(usuario, e, p);
  }

  Future<void> validarEstudiante(String m, String p) async {
    print(m);
    _listarEstudiante.value = await PeticionesEstudiante.validarEstudiante(m, p);
    // try{
    //   // _listarEstudiante.value = await PeticionesEstudiante.validarEstudiante(e, p);
    // }catch(e){
    //   _listarEstudiante.value = await PeticionesEstudiante.validarEstudiante(m, p);
    // }
    }

  List<Mensajes>? get listaMensajes => _listarMensajes.value;
  List<Estudiante>? get listaEstudianteLogin => _listarEstudiante.value;
}