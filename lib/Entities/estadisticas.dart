class Stadistics {
  final String? ataque;
  final String? defensa;
  final String? velocidad;

  Stadistics({this.ataque, this.defensa, this.velocidad});

  factory Stadistics.fromJson(Map<String, dynamic> json) {
    return Stadistics(
      ataque: json['ataque'],
      defensa: json['defensa'],
      velocidad: json['velocidad'],
    );
  }
}