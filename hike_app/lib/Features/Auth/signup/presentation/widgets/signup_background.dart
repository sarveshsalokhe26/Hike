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
            'assets/SignUpPage/768ed799c2aa24186d4b26f30ffffb99.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
