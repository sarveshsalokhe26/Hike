import 'package:flutter/material.dart';
import 'package:hike_app/LoginPage/login_screen.dart';

//Designing a signup page

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HikeMate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Georgia',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD4A373),
          brightness: Brightness.light,
        ),
      ),
      home: const SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Background Image
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              // ignore: unnecessary_string_escapes
              "assets/images/MayBe.jpg",
            ), // <-- your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(
                  0.85,
                ), // semi-transparent for better readability
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.brown.withOpacity(0.15),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Join the Adventure",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5C4033),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Sign up and explore hikes around the world",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF5C4033), fontSize: 14),
                  ),
                  const SizedBox(height: 20),

                  _buildTextField(Icons.person_outline, "Full Name"),
                  const SizedBox(height: 12),

                  _buildTextField(Icons.email_outlined, "Email"),
                  const SizedBox(height: 12),

                  _buildTextField(
                    Icons.lock_outline,
                    "Password",
                    isPassword: true,
                  ),
                  const SizedBox(height: 20),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD4A373),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 40,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      // TODO: Sign up logic
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(color: Color(0xFF5C4033)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            _fadeRoute(const SignInPage()),
                          );
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xFF8B5E3C),
                        ),
                        child: const Text("Sign In"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Reusable textfield builder
Widget _buildTextField(IconData icon, String hint, {bool isPassword = false}) {
  return TextField(
    obscureText: isPassword,
    decoration: InputDecoration(
      prefixIcon: Icon(icon, color: const Color(0xFF5C4033)),
      hintText: hint,
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),
  );
}

// Dummy SignInPage + transition
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Sign In Page")));
  }
}

PageRouteBuilder _fadeRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (_, __, ___) => page,
    transitionsBuilder: (_, animation, __, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
