import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 347,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account ? ',
            style: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
          ),
          GestureDetector(
            onTap: () {
              // Add navigation later
            },
            child: Text(
              'signin',
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
