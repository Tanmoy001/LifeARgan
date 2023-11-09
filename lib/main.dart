// import 'package:LifeARgan/Components/female_anatomy.dart';
import 'package:flutter/material.dart';
 import 'package:LifeARgan/Components/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LifeARgan',
      routes: {
        "/":(context)=>const Home(),
      },
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
