import 'package:ecommerce_app/views/home_view.dart';
import 'package:ecommerce_app/views/signUp_view.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_footer_line.dart';
import 'package:ecommerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
  });
  static String id = 'loginview';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  hint: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  obscureText: true,
                  hint: 'Password',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'Log in',
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, HomeView.id);
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFooterLine(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, SignUpView.id);
                    },
                    text: "Don't have an account",
                    textButton: 'Register !')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
