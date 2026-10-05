
import 'package:flutter/material.dart';
import 'package:workshop_flutter__4ei3/screens/GStoreGridView.dart';
import 'package:workshop_flutter__4ei3/screens/GStoreListView.dart';

import '../widgets/CustomDrawer.dart';
import 'MyCart.dart';
import 'Profile.dart';
class TabBarNav extends StatefulWidget {
  const TabBarNav({super.key});

  @override
  State<TabBarNav> createState() => _TabBarNavState();
}

class _TabBarNavState extends State<TabBarNav> with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController =TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        bottom:TabBar(
            controller: tabController,
            tabs: [
              Tab(icon: Icon(Icons.store),text: "Store",),
              Tab(icon: Icon(Icons.list),text: "Biblio",),
              Tab(icon: Icon(Icons.shopping_basket),text: "Basket",),
              Tab(icon: Icon(Icons.person),text: "Profile",),
            ]) ,
      ),
      body: TabBarView(
          controller: tabController,
          children: [
            GStoreListView(),
            GStoreGridView(),
            MyCart(),
            Profile()

          ]),

    );
  }
}