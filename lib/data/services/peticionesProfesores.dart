import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:upc_notes/domain/models/profesores.dart';
import '../../domain/models/utiles.dart';
import 'package:http/http.dart' as http;

class PeticionesProfesores {
  static Future<List<Mensajes>> modificarProfesor(
      String docente, String email, String telefono, String direccion) async {
    var url = Uri.parse(
        "https://p-movil.000webhostapp.com/UPC_NOTES/modificarProfesor.php");

    final response = await http
        .post(url, body: {'docente': docente, 'email': email, 'telefono': telefono, 'direccion': direccion});

    print(response.statusCode);
    //print(response.body);
    return compute(convertirAlista, response.body);
  }
  
  static Future<List<Mensajes>> eliminarProfesor(
      int idProfe) async {
    var url = Uri.parse(
        "https://p-movil.000webhostapp.com/UPC_NOTES/eliminarProfesor.php");

    final response = await http
        .post(url, body: {'idProfe': idProfe});

    print(response.statusCode);
    //print(response.body);
    return compute(convertirAlista, response.body);
  }

  static Future<List<Profesores>> getListProfesores() async {
    var url = Uri.parse(
        "https://p-movil.000webhostapp.com/UPC_NOTES/listaProfesores.php");

    final response = await http.get(url);

    print(response.statusCode);
    //print(response.body);
    return compute(convertirAlista2, response.body);
  }

  static List<Profesores> convertirAlista2(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
      //print(pasar);
      //print(pasar[0]['mensaje']);
    return pasar.map<Profesores>((json) => Profesores.desdeJson(json)).toList();
  }
  static Future<List<Mensajes>> registrarProfesor(
      String docente, String email, String telefono, String direccion) async {
    var url = Uri.parse(
        "https://p-movil.000webhostapp.com/UPC_NOTES/agregarProfesor.php");

    final response = await http
        .post(url, body: {'docente': docente, 'email': email, 'telefono': telefono, 'direccion': direccion});

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
}