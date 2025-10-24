import 'package:flutter/material.dart';
import 'package:hike_app/Features/auth/signup/pages/sign_up_screen.dart';

void main() {
  runApp(const HikeApp());
}

class HikeApp extends StatelessWidget {
  const HikeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hike Signup',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HikeSignUpScreen(),
    );
  }
}



