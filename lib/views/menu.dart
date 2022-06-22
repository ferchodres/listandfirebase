import 'package:flutter/material.dart';
import 'dart:math';

import 'package:listas_flutter/views/firebaselist.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);


  @override
  _Menus createState() => _Menus();
}

class _Menus extends State<Menu> {
  int _selectedIndex = 0;

  static const List<Widget>_widgetOptions = <Widget>[
    Text('service', style: TextStyle(
      fontSize: 24, fontWeight: FontWeight.bold),),
    FirebaseList(),
    Text('people', style: TextStyle(
      fontSize: 24, fontWeight: FontWeight.bold),),
  ];
  Color _tema2 = Colors.primaries[
    Random().nextInt(
      Colors.primaries.length)
      ];
      void _onTimeTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _tema2 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(
            backgroundColor: Colors.black, 
            title: const Text('movies')
            ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Stadistics'),
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'data'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onTimeTapped,
          backgroundColor: Colors.amber),
    );
  }
}