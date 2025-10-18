import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.white.withOpacity(1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 8),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'SignUp Dawg ✶★',
              style: GoogleFonts.shadowsIntoLightTwo(
                fontSize: 26,
                color: Colors.brown.shade700,
                letterSpacing: 1.2,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const _SignUpTextField(
            iconPath: 'assets/SignUpPage/Icons/communication.png',
            hint: 'Email',
          ),
          const SizedBox(height: 10),
          const _SignUpTextField(
            iconPath: 'assets/SignUpPage/Icons/padlock.png',
            hint: 'Password',
            obscure: true,
          ),
          const SizedBox(height: 10),
          const _SignUpTextField(
            iconPath: 'assets/SignUpPage/Icons/padlock.png',
            hint: 'ConfirmPassword',
            obscure: true,
          ),
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 2,
                ),
              ),
              onPressed: () {},
              child: Text(
                'Signup',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SignUpTextField extends StatelessWidget {
  final String iconPath;
  final String hint;
  final bool obscure;

  const _SignUpTextField({
    required this.iconPath,
    required this.hint,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0), // identical spacing as Icon()
            child: Image.asset(
              iconPath,
              width: 24,
              height: 24,
              // optional tint (keeps same color tone)
            ),
          ),
          hintText: hint,
          hintStyle: GoogleFonts.poppins(fontSize: 14),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 12,
          ),
        ),
      ),
    );
  }
}
