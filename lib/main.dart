import 'package:flutter/material.dart';
import 'models/shop.dart';
import 'pages/cart_page.dart';
import 'pages/shop_page.dart';
import 'themes/light_mode.dart';
import 'package:provider/provider.dart'; 
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
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      } // Apply the light mode theme
    );
  }
}
