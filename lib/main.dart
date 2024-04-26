import 'package:exam_e_commerce/home/detail_screen.dart';
import 'package:exam_e_commerce/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>HomeScreen(),
        '/detail':(context)=>DetailScreen(),
        '/cart':(context)=>CartScreen(),

      },
    );
  }
}
