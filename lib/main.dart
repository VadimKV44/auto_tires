import 'package:auto_tires/View/screen/splash_screen.dart';
import 'package:auto_tires/View/utils/my_custom_scroll_behavior.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      home: const SplashScreen(),
    );
  }
}
