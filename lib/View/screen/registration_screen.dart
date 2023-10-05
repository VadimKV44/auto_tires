import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('!!!!!!!!!!!!'),
          onPressed: () {},
        ),
      ),
    );
  }
}
