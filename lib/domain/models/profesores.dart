class Profesores {
  late int idProfe;
  late String docente;
  late String email;
  late String telefono;
  late String direccion;

  Profesores(
      {required this.idProfe,
      required this.docente,
      required this.email,
      required this.telefono,
      required this.direccion});

  factory Profesores.desdeJson(Map<String, dynamic> jsonMap) {
    return Profesores(
        idProfe: int.parse(jsonMap['id']),
        docente: jsonMap['docente'],
        email: jsonMap['email'],
        telefono: jsonMap['telefono'],
        direccion: jsonMap['direccion']);
  }
}