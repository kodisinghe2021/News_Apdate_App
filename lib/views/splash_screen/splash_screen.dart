import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:news_update_app/utils/util_functions.dart';
import 'package:news_update_app/views/login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    navigateToLogin();
    super.initState();
  }

// function to navigate login screen after 5 seconds
  void navigateToLogin() {
    Future.delayed(
      const Duration(milliseconds: 4),
      () {
        UtilFunctions.navigator(context, LoginScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BounceInDown(
          duration: const Duration(milliseconds: 3000),
          from: 90,
          child: const Text(
            "News App",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.greenAccent,
            ),
          ),
        ),
      ),
    );
  }
}
