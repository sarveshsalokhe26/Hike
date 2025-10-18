import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hike_app/Features/Auth/signup/presentation/widgets/signup_background.dart';
import 'package:hike_app/Features/Auth/signup/presentation/widgets/signup_header.dart';
import 'package:hike_app/Features/Auth/signup/presentation/widgets/signup_form.dart';
import 'package:hike_app/Features/Auth/signup/presentation/widgets/signup_footer.dart';

class HikeSignUpScreen extends StatelessWidget {
  const HikeSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SignUpBackground(),
          Container(color: Colors.black.withOpacity(0.1)),
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
            child: Column(
              children: [
                const SizedBox(height: 60),
                const SignUpHeader(),
                const SizedBox(height: 20),
                const SignUpForm(),
                const SizedBox(height: 10),
                Text(
                  'Find People Who FW This Kind Of Hangouts*',
                  style: GoogleFonts.cinzelDecorative(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 10),
                const SignUpFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
