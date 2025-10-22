import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90, // Increased height to fit both texts
      width: 347,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage(
            'assets/SignUpPage/3f34ec97cbf271252c756afa440743ae.jpg',
          ),
          fit: BoxFit.cover,
        ),
        border: Border.all(color: Colors.white70, width: 1),
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

          Text(
            "Find people who heavily fw mountains",
            style: GoogleFonts.amaticSc(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
