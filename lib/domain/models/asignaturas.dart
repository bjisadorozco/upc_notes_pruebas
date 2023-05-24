class Asignatura {
  late String nombre;
  late String profesor;
  late String salon;
  late String detalles;

  Asignatura(
      {required this.nombre,
      required this.profesor,
      required this.salon,
      required this.detalles});

  factory Asignatura.desdeJson(Map<String, dynamic> jsonMap) {
    return Asignatura(
        nombre: jsonMap['nombre'],
        profesor: jsonMap['profesor'],
        salon: jsonMap['salon'],
        detalles: jsonMap['detalles']);
  }
}
