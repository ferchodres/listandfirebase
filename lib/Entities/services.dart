import 'package:flutter/foundation.dart';

class Services {
  final String? carro;
  final String? placa;
  final String? color;


Services({ this.carro, this.placa, this.color});

factory Services.fromJson(Map<String, dynamic> json){
  return Services(
    carro: json['carro'],
    placa: json['placa'],
    color: json['color']
  );
}
}