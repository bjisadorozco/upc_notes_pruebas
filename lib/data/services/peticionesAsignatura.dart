import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:upc_notes/domain/models/asignaturas.dart';
import '../../domain/models/utiles.dart';
import 'package:http/http.dart' as http;

class PeticionesAsignaturas {
  static Future<List<Mensajes>> modificarAsignatura(
      String nombre, String profesor, String salon, String detalle) async {
    var url = Uri.parse(
        "https://p-movil.000webhostapp.com/UPC_NOTES/modificarAsignatura.php");

    final response = await http
        .post(url, body: {'nombre': nombre, 'profesor': profesor, 'salon': salon, 'detalle': detalle});

    print(response.statusCode);
    //print(response.body);
    return compute(convertirAlista, response.body);
  }
  
  static Future<List<Mensajes>> eliminarAsignatura(
      String nombre) async {
    var url = Uri.parse(
        "https://p-movil.000webhostapp.com/UPC_NOTES/eliminarAsignatura.php");

    final response = await http
        .post(url, body: {'nombre': nombre});

    print(response.statusCode);
    //print(response.body);
    return compute(convertirAlista, response.body);
  }

  static Future<List<Asignatura>> getListAsignatura() async {
    var url = Uri.parse(
        "https://p-movil.000webhostapp.com/UPC_NOTES/listaAsignaturas.php");

    final response = await http.get(url);

    print(response.statusCode);
    //print(response.body);
    return compute(convertirAlista2, response.body);
  }

  static List<Asignatura> convertirAlista2(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
      //print(pasar);
      //print(pasar[0]['mensaje']);
    return pasar.map<Asignatura>((json) => Asignatura.desdeJson(json)).toList();
  }
  static Future<List<Mensajes>> registrarAsignaturas(
      String nombre, String profesor, String salon, String detalles) async {
    var url = Uri.parse(
        "https://p-movil.000webhostapp.com/UPC_NOTES/agregarAsignatura.php");

    final response = await http
        .post(url, body: {'nombre': nombre, 'profesor': profesor, 'salon': salon, 'detalles': detalles});

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
