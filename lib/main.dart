// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'inputpage.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("BMI"),
          ),
          body: input_page(),
        ),
      ),
    );
  }
}
