import 'package:code_hackathon/themes/color.dart';
import 'package:code_hackathon/themes/images.dart';
import 'package:code_hackathon/widgets/custom_button.dart';
import 'package:code_hackathon/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            height: 374,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageUrl.loginImageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hoşgeldiniz',
                  style: TextStyle(
                    color: ThemeColor.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas gravida ornare leo, in tempus dui rutrum eget.!',
                  style: TextStyle(
                    color: ThemeColor.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              height: 460,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ThemeColor.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: ThemeColor.navyBlue,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    hintText: "admin@email.com",
                    prefixIcon: Icon(
                      Icons.mail_outline,
                      color: ThemeColor.purple,
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    hintText: "***",
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: ThemeColor.purple,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.topRight,
                    child: _CustomTextButton(
                      onPressed: () {},
                      text: "Şifrenizi mi unuttunuz ?",
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomButton(
                    onPressed: () {},
                    buttonStyle: ElevatedButton.styleFrom(
                      backgroundColor: ThemeColor.purple,
                    ),
                    text: "Giriş Yap",
                    textStyle: TextStyle(color: ThemeColor.white),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: _CustomTextButton(
                      onPressed: () {},
                      text: "Kayıt Ol",
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
}

class _CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const _CustomTextButton({required this.onPressed, required this.text});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
      ),
    );
  }
}
