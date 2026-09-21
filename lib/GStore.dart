import 'package:flutter/material.dart';
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
            Card(
              child:Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Image.asset("assets/images/iceroad.jpg"),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ice Road",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Icon(Icons.star,color: Colors.amber,size: 27,)
                        ],
                      ),
                    )
                  ],
                ),
              ) ,
            ),
            Card(
              child:Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Image.asset("assets/images/thegrudge.jpg"),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("The Grudge",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Icon(Icons.star,color: Colors.amber,size: 27,)
                        ],
                      ),
                    )
                  ],
                ),
              ) ,
            ),
            Card(
              child:Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Image.asset("assets/images/HouseOfDead.jpg"),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("House Of Dead",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Icon(Icons.star,color: Colors.amber,size: 27,)
                        ],
                      ),
                    )
                  ],
                ),
              ) ,
            )
          ],
        ),
      ) ,
    );
  }
}
