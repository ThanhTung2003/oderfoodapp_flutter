// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:oderfoodapp_flutter/screen/log_in.dart';
import 'dart:async';

class MyColors {
  static const Color color1 = Color(0xFF46289C); // Màu #46289C
  static const Color color2 = Color(0xFF7A6AA6); // Màu #7A6AA6
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>  LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          // gradient: LinearGradient(
          //   colors: [MyColors.color1, MyColors.color2],
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          // ),
        ),
        child: Center(
          child: ClipOval(
            child: Image.asset(
              'asset/logo.jpg',
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
