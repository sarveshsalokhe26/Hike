import 'package:flutter/material.dart';
import 'package:hike_app/Features/Auth/signup/widgets/signup_background.dart';
import 'package:hike_app/Features/Auth/signup/widgets/signup_header.dart';
import 'package:hike_app/Features/Auth/signup/widgets/signup_form.dart';

class HikeSignUpScreen extends StatelessWidget {
  const HikeSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          /// Background image
          const SignUpBackground(),

          /// Foreground scrollable content
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    SizedBox(height: 40),
                    SignUpHeader(),
                    SizedBox(height: 25),
                    SignUpForm(),
                    SizedBox(height: 40),
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
