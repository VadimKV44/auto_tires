import 'package:auto_tires/View/consts/colors.dart';
import 'package:auto_tires/View/consts/strings.dart';
import 'package:auto_tires/View/consts/styles.dart';
import 'package:auto_tires/View/screen/login_screen.dart';
import 'package:auto_tires/View/screen/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MainColors.kWhiteColor,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 48.0,
                child: TabBar(
                  indicatorColor: MainColors.kMainRedColor,
                  labelStyle: MainStyles.kMainRedColorW500(14.0),
                  unselectedLabelStyle: MainStyles.kGreyColorW500(14.0),
                  labelColor: MainColors.kMainRedColor,
                  unselectedLabelColor: MainColors.kGreyColor,
                  splashFactory: NoSplash.splashFactory,
                  indicatorPadding: EdgeInsets.zero,
                  indicatorWeight: 2.0,
                  tabs: const [
                    Tab(text: Strings.goIn),
                    Tab(text: Strings.registration),
                  ],
                ),
              ),
              const Divider(height: 1, color: MainColors.kGreyColor2),
              const Expanded(
                child: TabBarView(
                  children: [
                    LoginScreen(),
                    RegistrationScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
