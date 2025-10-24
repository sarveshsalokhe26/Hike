import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70, // Increased height to fit both texts
      width: 347,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage(
            'assets/SignUpPage/e3b8c210b90a55cc4d87758a9aa076b0.jpg',
          ),
          fit: BoxFit.cover,
        ),
        border: Border.all(color: Colors.white70.withOpacity(0.5), width: 1),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Align text in the center
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'HIKE',
            style: GoogleFonts.amaticSc(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 35,
              letterSpacing: 3,
            ),
          ),
        ],
      ),
    );
  }
}
