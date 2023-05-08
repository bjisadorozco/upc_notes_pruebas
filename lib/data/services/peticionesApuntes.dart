import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../../domain/models/utiles.dart';
import 'package:http/http.dart' as http;

class PeticionesApuntes {
  static Future<List<Mensajes>> registrarApunte(
      String titulo, String descripcion) async {
    var url = Uri.parse(
        "https://p-movil.000webhostapp.com/UPC_NOTES/agregarApunte.php");

    final response = await http
        .post(url, body: {'titulo': titulo, 'descripcion': descripcion});

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
