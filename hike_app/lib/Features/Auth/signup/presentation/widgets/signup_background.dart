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
            'assets/SignUpPage/3f34ec97cbf271252c756afa440743ae.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
