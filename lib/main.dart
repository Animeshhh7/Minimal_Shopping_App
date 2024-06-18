import 'dart:js';

import 'package:flutter/material.dart';
import 'package:quick_cart/themes/light_mode.dart'; 
import 'pages/intro_page.dart';

// Entry point of the app
void main() {
  runApp(
   ChangeNotifierProvider(
    create: (context) => Shop(), 
    child: const MyApp(),
    ),
  ); 
}

// Main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable the debug banner
      home: const IntroPage(), // Set IntroPage as the home page
      theme: lightMode, // Apply the light mode theme
    );
  }
}
