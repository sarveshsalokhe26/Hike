import 'package:flutter/material.dart';
import 'package:hike_app/Features/Auth/signin/widgets/sign_in_form.dart';
import 'package:hike_app/Features/Auth/signin/widgets/sign_in_header.dart';
import 'package:hike_app/Features/Auth/signup/widgets/signup_background.dart';

class HikeSignInScreen extends StatelessWidget {
  const HikeSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          const SignUpBackground(),

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
                    const SignInHeader(),
                    const SizedBox(height: 15),
                    const SignInForm(),
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
