import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_footer_line.dart';
import 'package:ecommerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static String id = 'signUpView';

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
                  hint: 'UserName',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 30,
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
                const CustomButton(text: 'Regestier'),
                const SizedBox(
                  height: 30,
                ),
                CustomFooterLine(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    text: "Have an account",
                    textButton: 'Log in !')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
