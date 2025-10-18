import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HikeSignUpPage extends StatelessWidget {
  const HikeSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            height: 800,
            width: 500,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/SignUpPage/e3b8c210b90a55cc4d87758a9aa076b0.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Transparent overlay for subtle readability
          Container(color: Colors.black.withOpacity(0.1)),

          // Content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
              child: Column(
                children: [
                  const SizedBox(height: 40),

                  // Top Rounded Rectangle with HIKE
                  Container(
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
                  ),

                  const SizedBox(height: 20),

                  // Signup Card
                  Container(
                    width: 347,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 8,
                        ),
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

                        // Email Field
                        _buildTextField(
                          icon: Icons.email_outlined,
                          hint: 'Email',
                        ),

                        const SizedBox(height: 10),

                        // Password Field
                        _buildTextField(
                          icon: Icons.lock_outline,
                          hint: 'Password',
                          obscure: true,
                        ),

                        const SizedBox(height: 10),

                        // Confirm Password
                        _buildTextField(
                          icon: Icons.lock_outline,
                          hint: 'ConfirmPassword',
                          obscure: true,
                        ),

                        const SizedBox(height: 55),

                        // Signup Button
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 25,
                                vertical: 3,
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
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Tagline
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

                  // Already have an account?
                  Container(
                    height: 45,
                    width: 347,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account ? ',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required IconData icon,
    required String hint,
    bool obscure = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.black87),
          hintText: hint,
          hintStyle: GoogleFonts.poppins(fontSize: 14),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
        ),
      ),
    );
  }
}
