import 'package:flutter/material.dart';

class Listview extends StatelessWidget {

  const Listview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.cloud_circle),
            title: Text("changos"),
          )
        ],
      ),
    );
  }
}