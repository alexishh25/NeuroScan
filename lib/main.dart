import 'package:flutter/material.dart';
import 'package:neuroscan/Vistas/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NeuroScan',
      theme: ThemeData(
        primarySwatch: Colors.blue, // color principal
      ),
      home: const menu(),
    );
  }
}