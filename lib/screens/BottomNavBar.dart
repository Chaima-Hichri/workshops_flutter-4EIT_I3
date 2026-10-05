
import 'package:flutter/material.dart';
import 'package:workshop_flutter__4ei3/screens/GStoreGridView.dart';
import 'package:workshop_flutter__4ei3/screens/GStoreListView.dart';

import '../widgets/CustomDrawer.dart';
import 'MyCart.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex =0;
  List<Widget> interfaces = [GStoreListView(),GStoreGridView(),MyCart()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (value){
            setState(() {
              pageIndex=value;
            });
          },

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.store),label: "Store"),
            BottomNavigationBarItem(icon: Icon(Icons.list),label: "Bibliotheque"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_basket),label: "Basket"),
          ]),

      body: interfaces[pageIndex],

    );
  }
}