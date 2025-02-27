import 'package:flutter/material.dart';
import 'usage_example/facebook_card_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FacebookCardExample() ,
    );
  }
}