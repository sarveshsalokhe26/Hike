import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hike_app/Features/Auth/signup/presentation/widgets/signup_background.dart';

class BaseAuthScreen extends StatelessWidget {
  final Widget header;
  final Widget form;
  final String tagline;

  const BaseAuthScreen({
    super.key,
    required this.header,
    required this.form,
    required this.tagline,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SignUpBackground(), // Reusing your existing background
          Container(color: Colors.black.withOpacity(0.1)), // Overlay
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
            child: Column(
              children: [
                const SizedBox(height: 70),
                header,
                const SizedBox(height: 20),
                form,
                const SizedBox(height: 15),
                Text(
                  tagline,
                  style: GoogleFonts.shadowsIntoLightTwo(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
