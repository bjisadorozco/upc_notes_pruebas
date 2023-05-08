class Estudiante {
  late int id;
  late String usuario;
  late String email;
  late String password;

  Estudiante(
      {required this.id,
      required this.usuario,
      required this.email,
      required this.password});

  factory Estudiante.desdeJson(Map<String, dynamic> jsonMap) {
    return Estudiante(
        id: int.parse(jsonMap['id']),
        usuario: jsonMap['usuario'],
        email: jsonMap['email'],
        password: jsonMap['pass']);
  }
}