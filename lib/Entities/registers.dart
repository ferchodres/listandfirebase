import 'package:listas_flutter/Entities/model.dart';
import 'estadisticas.dart';

class Registers{
  final Model? model;
  final Stadistics? estadisticas;
  final String? image;


  Registers({this.model,
            this.estadisticas,
            this.image});

  factory Registers.fromJson(Map<String, dynamic> json) {
    return Registers(
      model: json['registros'] != null
          ? Model.fromJson(Map<String, dynamic>.from(json['registros'] as Map))
          : null,
      estadisticas: json['estadisticas'] != null
          ? Stadistics.fromJson(
              Map<String, dynamic>.from(json['estadisticas'] as Map))
          : null,
      image: json['image']
    );
  }
}
