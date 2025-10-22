import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 347,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage(
            'assets/SignUpPage/3e1ba2310561992686fc7786af4e5a17.jpg',
          ),
          fit: BoxFit.cover,
        ),
        border: Border.all(color: Colors.white70, width: 1),
      ),
      alignment: Alignment.center,
      child: Text(
        'HIKE',
        style: GoogleFonts.amaticSc(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 30,
          letterSpacing: 3,
        ),
      ),
    );
  }
}