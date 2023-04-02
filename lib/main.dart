import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:task01/gift_cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StarBuks',
      theme: ThemeData(
       useMaterial3: true,
       primarySwatch: Colors.green
      ),
      home: const GiftCards()
    );
  }
}

