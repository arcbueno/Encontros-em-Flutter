import 'package:flutter/material.dart';
import 'package:noventa_8_food/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'exemplo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.orange),
        appBarTheme: AppBarTheme(backgroundColor: Colors.green),
        fontFamily: 'Comic Sans MS',
        // useMaterial3: true,
      ),
      home: const MyHomePage(title: '98 Food'),
    );
  }
}
