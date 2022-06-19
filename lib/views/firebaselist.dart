import 'package:flutter/material.dart';



class FirebaseList extends StatelessWidget{
  const FirebaseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("algo"),
        ),
        body: Center(
          child: Container(
            child: const Text('Hola')
          ),
        ),
      ),
    );
    
    
  }
}