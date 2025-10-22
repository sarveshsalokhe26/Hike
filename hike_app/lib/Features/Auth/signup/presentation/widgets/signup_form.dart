import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.white.withOpacity(0.0),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.white.withOpacity(0.2), blurRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
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

          // Email
          const _SignUpTextField(
            iconPath: 'assets/SignUpPage/Icons/communication.png',
            hint: 'Email',
          ),
          const SizedBox(height: 10),

          // Password
          const _SignUpTextField(
            iconPath: 'assets/SignUpPage/Icons/padlock.png',
            hint: 'Password',
            obscure: true,
          ),
          const SizedBox(height: 10),

          // Confirm Password
          const _SignUpTextField(
            iconPath: 'assets/SignUpPage/Icons/padlock.png',
            hint: 'Confirm Password',
            obscure: true,
          ),
          const SizedBox(height: 15),

          // Signup Button
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 6,
                ),
              ),
              onPressed: () {},
              child: Text(
                'Signup',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),

          // "OR" divider
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.grey.shade400,
                  thickness: 1,
                  endIndent: 10,
                ),
              ),
              Text(
                'OR',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              Expanded(
                child: Divider(
                  color: Colors.grey.shade400,
                  thickness: 1,
                  indent: 10,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),

          // Social signup options
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _SocialIconButton(
                iconPath: 'assets/SignUpPage/Icons/search.png',
                onTap: () {},
              ),
              const SizedBox(width: 20),
              _SocialIconButton(
                iconPath: 'assets/SignUpPage/Icons/communication (1).png',
                onTap: () {},
              ),
              const SizedBox(width: 20),
              _SocialIconButton(
                iconPath: 'assets/SignUpPage/Icons/apple-logo.png',
                onTap: () {},
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Already have an account
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account ?  ',
                  style: GoogleFonts.roboto(fontSize: 14, color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    // TODO: Navigate to SignIn screen
                  },
                  child: Text(
                    'signin',
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
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

/// ---------- Input Field ----------
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
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(iconPath, width: 24, height: 24),
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

/// ---------- Social Icons ----------
class _SocialIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onTap;

  const _SocialIconButton({required this.iconPath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade400),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 6,
              offset: const Offset(1, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(iconPath, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
