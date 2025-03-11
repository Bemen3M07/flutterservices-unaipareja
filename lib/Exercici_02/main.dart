import 'package:empty/Exercici_02/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Counter',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 255, 0, 0),
      ),
      home: const HomeScreen(), // Scaffold
    ); // MaterialApp
  }
}