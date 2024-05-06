import 'package:code_hackathon/screens/login_screen.dart';
import 'package:code_hackathon/themes/color.dart';
import 'package:code_hackathon/themes/images.dart';
import 'package:code_hackathon/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.purple,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(ImageUrl.introImageUrl),
              ),
              CustomButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                text: "İleri",
              )
            ],
          ),
        ),
      ),
    );
  }
}
