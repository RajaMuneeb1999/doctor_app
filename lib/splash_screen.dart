import 'package:doctor_app/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF014E78),
        body: Center(
          child: Image.asset('assets/logo 3.png'),
        ),
      ),
    );
  }
}
