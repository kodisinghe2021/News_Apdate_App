import 'package:flutter/material.dart';
import 'package:news_update_app/views/login_screen/login_screen.dart';
import 'package:news_update_app/views/login_screen/registration_screen.dart';
import 'package:news_update_app/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News Reading APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
