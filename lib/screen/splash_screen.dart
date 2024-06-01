import 'package:flutter/material.dart';
import 'dart:async';

import 'package:oderfoodapp_flutter/main.dart'; // Thêm thư viện này để sử dụng Timer

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [MyColors.color1, MyColors.color2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
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
