import 'package:flutter/material.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Image.asset("assets/images/logo.png")),
          ListTile(
            leading: IconButton(onPressed: (){
              Navigator.pushNamed(context, "/profile");
            },
                icon: Icon(Icons.person)),
            title: Text("Update Profile"),
          ),
          ListTile(
            leading: IconButton(onPressed: (){
              Navigator.pushNamed(context, "/");

            }, icon: Icon(Icons.logout)),
            title: Text("logout"),
          ),
          ListTile(
            leading: IconButton(onPressed: (){
              Navigator.pushNamed(context, "/bottomnavbar");
            }, icon: Icon(Icons.arrow_circle_right_rounded)),
            title: Text("Go to NavBar"),
          ),
        ],
      ),
    );
  }
}