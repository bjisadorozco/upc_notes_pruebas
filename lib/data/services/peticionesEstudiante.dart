import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:upc_notes/domain/models/estudiante.dart';
import '../../domain/models/utiles.dart';

class PeticionesEstudiante {
  static Future<List<Mensajes>> registrarEstudiante(
      String usuario, String e, String p) async {
    var url = Uri.parse(
        "https://p-movil.000webhostapp.com/UPC_NOTES/agregarEstudiante.php");

    final response = await http
        .post(url, body: {'usuario': usuario, 'email': e, 'password': p});

    print(response.statusCode);
    print(response.body);
    return compute(convertirAlista, response.body);
  }

  static List<Mensajes> convertirAlista(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    print(pasar);
    print(pasar[0]['mensaje']);
    return pasar.map<Mensajes>((json) => Mensajes.desdeJson(json)).toList();
  }

  static Future<List<Estudiante>> validarEstudiante(String email, String pass) async {
    var url = Uri.parse(
        "https://p-movil.000webhostapp.com/UPC_NOTES/validarEstudiante.php");
    print(email);
    final response = await http.post(url, body: {'email': email, 'pass': pass});
  print(response.body);
    return compute(convertirAlista2, response.body);
  }

  static List<Estudiante> convertirAlista2(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    return pasar.map<Estudiante>((json) => Estudiante.desdeJson(json)).toList();
  }
}