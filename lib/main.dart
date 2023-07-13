import 'package:flutter/material.dart';
import 'package:wearcounterapp/screens/star_screem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(83, 0, 0, 0),
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          bodyMedium: TextStyle(
            color: Color.fromARGB(195, 10, 237, 245),
          ),
          bodySmall: TextStyle(
            color: Color.fromARGB(255, 7, 7, 7),
            fontSize: 12,
            fontWeight: FontWeight.bold
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white
          )
        ),
        useMaterial3: true,
      ),
      home: const StartScreen(),
    );
  }
}