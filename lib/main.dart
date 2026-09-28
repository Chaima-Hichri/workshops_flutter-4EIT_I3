import 'package:flutter/material.dart';
import 'package:workshop_flutter__4ei3/screens/Details.dart';
import 'package:workshop_flutter__4ei3/screens/GStoreGridView.dart';
import 'package:workshop_flutter__4ei3/screens/GStoreListView.dart';
import 'package:workshop_flutter__4ei3/screens/MyCart.dart';

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
      home: GStoreGridView()
    );
  }
}


