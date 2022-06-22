
import 'package:listas_flutter/Entities/registers.dart';

class ResponseFirebase {
  List<Registers>? registros;

  ResponseFirebase({
    this.registros,
  });

  ResponseFirebase.fromJson(List<dynamic> json) {
    registros = json
        .map((e) => Registers.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
  }
}