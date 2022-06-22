import 'package:flutter/foundation.dart';

class Model {
  final String? nombre;
  final String? elemento;
  final String? debilidad;


Model({ this.nombre, this.elemento, this.debilidad});

factory Model.fromJson(Map<String, dynamic> json){
  return Model(
    nombre: json['nombre'],
    elemento: json['elemento'],
    debilidad: json['debilidad']
  );
}
}