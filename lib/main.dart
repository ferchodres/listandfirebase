import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:listas_flutter/firebase_options.dart';
import 'package:listas_flutter/views/firebaselist.dart';
///import 'package:listas_flutter/views/page1.dart';

///import 'views/listview.dart';


void main() async{

WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
callDatabase();
runApp(const MyApp());
}



class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key); 

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: FirebaseList()
    );
  }
}

/* Function created to get data from firebase

* you must instance link of the database
* this event is a listener event, which means is update on real time
* in order to print the answer, you must convert data to something readable */

void callDatabase() {
  DatabaseReference starCountRef = FirebaseDatabase.instance.ref('/registros/');
  starCountRef.onValue.listen((event) {
    final data = event.snapshot.value;
    print(data.toString());
  });
}
