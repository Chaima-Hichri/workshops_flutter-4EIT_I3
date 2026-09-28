import 'package:flutter/material.dart';
import 'package:workshop_flutter__4ei3/widgets/itemListViewFilm.dart';

import '../models/Film.dart';
class GStoreListView extends StatefulWidget {
  const GStoreListView({super.key});

  @override
  State<GStoreListView> createState() => _GStoreListViewState();
}

class _GStoreListViewState extends State<GStoreListView> {
  final List<Film> films = const [
    const Film("House Of Dead", "HouseOfDead.jpg","The House of the Dead is a classic arcade light gun shooter series from Sega that features government agents fighting hordes of biologically engineered undead and mutants",300),
    const Film("IceRoad", "iceroad.jpg","The Ice Road follows a team of truck drivers on a dangerous mission over frozen lakes and winter roads to deliver a crucial component to save workers trapped in .",200),
    const Film("The Grudge", "thegrudge.jpg","The Grudge is a curse, born when someone dies in extreme rage or sorrow and lingers where the person dies. Those who encounter it will die, and the curse is ..",150),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("G-STORE"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body:ListView.builder(
          itemCount: films.length,
          itemBuilder: (context,index){
          return itemListViewFilm(image:films[index].image , title: films[index].title);
          })
    );
  }
}
