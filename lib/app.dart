import 'package:flutter/material.dart';
import 'package:wah/features/home/index.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wah!',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true, // ✅ Material Design 3
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow.shade700),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(fontFamily: 'Roboto'),
          ),
        ),
        home: const HomePage());
  }
}
