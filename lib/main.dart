import 'package:flutter/material.dart';


import 'package:netflix_clone/screens/splash_screen.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
    );
  }
}
