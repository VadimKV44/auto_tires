import 'package:auto_tires/Services/firebase_services/firebase_options.dart';
import 'package:auto_tires/View/screen/splash_screen.dart';
import 'package:auto_tires/View/utils/my_custom_scroll_behavior.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
