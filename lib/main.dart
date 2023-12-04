import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/rourts/home_scrren.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
