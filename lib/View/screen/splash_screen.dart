import 'package:animate_do/animate_do.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:auto_tires/View/consts/colors.dart';
import 'package:auto_tires/View/consts/strings.dart';
import 'package:auto_tires/View/consts/styles.dart';
import 'package:auto_tires/View/screen/authorization_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: MainColors.kMainRedColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: MainColors.kMainRedColor,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return AnimatedSplashScreen(
      backgroundColor: MainColors.kMainRedColor,
      splashIconSize: 1000.0,
      splash: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/wheel.png'),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Image.asset('assets/gifs/animate_logo.gif'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height / 4,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FadeIn(
                delay: const Duration(seconds: 2),
                child: Text(
                  Strings.automApp,
                  textAlign: TextAlign.center,
                  style: MainStyles.kWhiteColorW500(40.0),
                ),
              ),
            ),
          ),
        ],
      ),
      nextScreen: const AuthorizationScreen(),
    );
  }
}