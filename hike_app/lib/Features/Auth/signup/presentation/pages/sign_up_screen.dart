import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hike_app/Features/Auth/signup/presentation/widgets/signup_background.dart';
import 'package:hike_app/Features/Auth/signup/presentation/widgets/signup_header.dart';
import 'package:hike_app/Features/Auth/signup/presentation/widgets/signup_form.dart';

class HikeSignUpScreen extends StatelessWidget {
  const HikeSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          const SignUpBackground(),

          // Slight overlay for dimming
          Container(color: Colors.black.withOpacity(0.1)),

          // Centered scrollable content
          Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SignUpHeader(),
                    const SizedBox(height: 15),
                    const SignUpForm(),
                    SizedBox(height: 10),
                    Text(
                      'This Could Literally be us*',
                      style: GoogleFonts.shadowsIntoLightTwo(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
