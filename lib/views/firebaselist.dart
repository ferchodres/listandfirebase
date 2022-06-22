import 'package:flutter/material.dart';
import 'package:listas_flutter/Entities/registers.dart';

import '../domains/firebase_connection.dart';



class FirebaseList extends StatefulWidget{
  const FirebaseList({Key? key}) : super(key: key);

  @override
  State<FirebaseList> createState() => _FirebaseList();

}

class _FirebaseList extends State<FirebaseList>{
  final conection = FirebaseConnection();
  List<Registers> registros = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("pokemons"),
        ),
        body: ListView.builder(
            itemCount: registros.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        Image.network(registros[index].image!).image),
                title: Text(
                    '${registros[index].model!} ${registros[index].model!}'),
                onTap: () {
                  AlertDialog alert = const AlertDialog(
                      title: Text('no client found'),
                      content: Text(
                          'the client has not been found please tap on another client'));
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                },
              );
            }
        ),
    );
  }

  void callDatabase() async {
    final response = await conection.getAllRegistros();
    if (registros.isEmpty) {
      setState(() {
        registros = response.registros!;
        print(registros);
      });
    }
  }
}