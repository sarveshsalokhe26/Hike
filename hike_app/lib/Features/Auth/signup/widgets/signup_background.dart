import 'package:flutter/material.dart';

class SignUpBackground extends StatelessWidget {
  const SignUpBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/SignUpPage/e3b8c210b90a55cc4d87758a9aa076b0.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
