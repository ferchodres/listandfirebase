import 'package:flutter/material.dart';

class Page1 extends StatelessWidget{
  Page1({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _games = [
    {
      "id": "1",
      "image":"https://media.vandal.net/i/1024x1024/20175/the-binding-of-isaac-rebirth-2014116124043_1.jpg" , 
      "name": "The binding of Isaac"
    },
    {
      "id": "2",
      "image":"https://as01.epimg.net/meristation/imagenes/2021/08/13/analisis/1628866320_905154_1628866370_portada_normal.jpg" , 
      "name": "Hades"
    },
    {
      "id": "3",
      "image":"https://cdn1.epicgames.com/ff52981b1d9947978153c7a7f8bc6d90/offer/EGS_DiscoElysiumTheFinalCut_ZAUM_S6-1200x1600-486d4da970eede7364b9650d63900bad.jpg" , 
      "name": "Disco Elysium"
    },
    {
      "id": "4",
      "image":"https://assets2.ignimgs.com/2016/07/18/final-fantasy-xv-button-2016jpg-19b146.jpg" , 
      "name": "Final Fantasy XV"
    },
    {
      "id": "5",
      "image":"https://cdn1.epicgames.com/salesEvent/salesEvent/EGS_LeagueofLegends_RiotGames_S2_1200x1600-7fd64f0f7b674900bdd172967865d545" , 
      "name": "League of Legends"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Videojuegos"),
      ),
      body: ListView.builder(
        itemCount: _games.length,
        physics: const BouncingScrollPhysics(), ///let bouncing the list
        itemBuilder: (_, index){
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: Image.network(_games[index]["image"]!).image,
            ),
          title: Text(_games[index]["name"]!),
          onTap: (){
            showDialog(
              context: context, 
              builder: (_){
                return const AlertDialog(
                  backgroundColor: Colors.transparent,
                  
                );
              });
          },
          );
        },
      ),
    );
  }
  
}