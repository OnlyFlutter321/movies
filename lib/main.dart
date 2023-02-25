import 'package:flutter/material.dart';
import 'package:movies/views/home_screen.dart';
import 'package:movies/views/location.dart';
import 'package:movies/views/splash_screen.dart';

import 'views/choose_cinema.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ENESIS CINEMAS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
