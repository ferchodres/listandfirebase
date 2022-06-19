import 'package:flutter/material.dart';

class SavePage extends StatelessWidget {
  const SavePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Guardar")),
      body: _FormSave()
    );
  }
}

class _FormSave extends StatelessWidget {
final savetext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(12),
        child: Form(
          child: Column(
          children: [
            const SizedBox(height: 7, width: 20,),
            const Text("valor",textAlign: TextAlign.end,),
            TextFormField(
              //recomended create validator atribute
              //initialValue: "Mi nombre es Frailejon",
              controller: savetext,
              maxLength: 40,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Por agregar",
              ),
            ),

            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Continuará",
                ),
              ),
            ElevatedButton(
              onPressed: (){if (true) { //on pressed needs a condition true to save values
                print("listo" + savetext.text);}}, //you should add condition here
              child: const Text("Guardar"),
              style: ButtonStyle(
                backgroundColor:MaterialStateProperty.all<Color>(
                  Colors.grey),),
              )
          ],
        )
      ),
    );
  }
}