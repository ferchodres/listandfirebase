import 'package:flutter/material.dart';




class Prueba extends StatelessWidget {
  const Prueba({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(22, 117, 51, 46),
        foregroundColor: Colors.blue,
        title: const Text("algo"),),
      body:const OtraPrueba(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.villa), onPressed: (){
          Navigator.pushNamed(context, "/savepage");
        }, ),
      
    );
  }
}

class OtraPrueba extends StatelessWidget {
  const OtraPrueba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
        ListTile(title: Text("a"),),
        ListTile(title: Text("b"),),
        ListTile(title: Text("j"),),
    ],)
    );
  }
}