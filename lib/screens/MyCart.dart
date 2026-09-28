import 'package:flutter/material.dart';
import 'package:workshop_flutter__4ei3/widgets/MyCartItem.dart';
class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: Column(
        children: [
          MyCartItem(image: "iceroad.jpg", title: "IceRoad"),
          MyCartItem(image: "iceroad.jpg", title: "IceRoad"),
          MyCartItem(image: "iceroad.jpg", title: "IceRoad"),
        ],
      ),
    );

  }
}
