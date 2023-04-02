import 'package:custom_painter/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
const Color kCanvasColor = Color(0xfff2f3f7);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}
