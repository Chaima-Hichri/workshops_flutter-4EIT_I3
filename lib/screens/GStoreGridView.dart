import 'package:flutter/material.dart';
import 'package:workshop_flutter__4ei3/widgets/itemGridViewFilm.dart';

import '../models/Film.dart';
class GStoreGridView extends StatefulWidget {
  const GStoreGridView({super.key});

  @override
  State<GStoreGridView> createState() => _GStoreGridViewState();
}

class _GStoreGridViewState extends State<GStoreGridView> {
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
      body:GridView.builder(
          itemCount: films.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 12,
              mainAxisExtent: 170

          ),
          itemBuilder: (context,index){
            return itemGridViewFilm(image: films[index].image, title: films[index].title);

          }) ,
    );
  }
}
