class ApuntesEstudiante{
  final String titulo;
  final String descripcion;

  ApuntesEstudiante(
    {required this.titulo,
    required this.descripcion,
    }
  );
  
  factory ApuntesEstudiante.desdeJson(Map<String, dynamic> jsonMap) {
    return ApuntesEstudiante(
        titulo: jsonMap['titulo'],
        descripcion: jsonMap['descripcion'],
      );
  }
}