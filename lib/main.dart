import 'package:flutter/material.dart';
import 'package:workshop_flutter__4ei3/screens/BottomNavBar.dart';
import 'package:workshop_flutter__4ei3/screens/Details.dart';
import 'package:workshop_flutter__4ei3/screens/GStoreGridView.dart';
import 'package:workshop_flutter__4ei3/screens/GStoreListView.dart';
import 'package:workshop_flutter__4ei3/screens/MyCart.dart';
import 'package:workshop_flutter__4ei3/screens/Profile.dart';
import 'package:workshop_flutter__4ei3/screens/SignIn.dart';
import 'package:workshop_flutter__4ei3/screens/SignUp.dart';
import 'package:workshop_flutter__4ei3/screens/TabBarNav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
    initialRoute: '/',
    routes: {
    '/': (context) => const SignIn(),
    '/signup': (context) => const SignUp(),
    '/profile': (context) => const Profile(),
    '/myfilmslistview': (context) => const GStoreListView(),
    '/myfilmsgridview': (context) => const GStoreGridView(),
    '/mycart': (context) => const MyCart(),
    '/bottomnavbar': (context) => const BottomNavBar(),
    '/tabbarnav': (context) => const TabBarNav(),
    },
     // home: BottomNavBar()
    );
  }
}


