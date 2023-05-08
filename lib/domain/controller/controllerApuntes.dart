import 'package:get/get.dart';
import '../../data/services/peticionesApuntes.dart';
import '../models/apuntes.dart';
import '../models/utiles.dart';

class ControlApuntes extends GetxController {
  final Rxn<List<Mensajes>> _listarMensajes = Rxn<List<Mensajes>>([]);
  final Rxn<List<ApuntesEstudiante>> _listarApuntes = Rxn<List<ApuntesEstudiante>>([]);

  Future<void> crearApunte(String titulo, String descripcion) async {
    _listarMensajes.value = await PeticionesApuntes.registrarApunte(titulo, descripcion);
  }
  List<Mensajes>? get listaMensajes => _listarMensajes.value;
  List<ApuntesEstudiante>? get listaApuntes => _listarApuntes.value;
}