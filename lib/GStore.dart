import 'package:flutter/material.dart';
import 'package:workshop_flutter__4ei3/CardFilmItem.dart';
class GStore extends StatefulWidget {
  const GStore({super.key});

  @override
  State<GStore> createState() => _GStoreState();
}

class _GStoreState extends State<GStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("G-STORE"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            CardFilmItem(image: "iceroad.jpg", title: "Ice Road"),
            CardFilmItem(image: "thegrudge.jpg", title: "The grudge"),
            CardFilmItem(image: "HouseOfDead.jpg", title: "House Of Dead")

          ],
        ),
      ) ,
    );
  }
}
