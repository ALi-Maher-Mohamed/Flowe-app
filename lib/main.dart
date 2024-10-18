import 'package:ecommerce_app/views/home_view.dart';
import 'package:ecommerce_app/views/login_view.dart';
import 'package:ecommerce_app/views/signUp_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlowerApp());
}

class FlowerApp extends StatelessWidget {
  const FlowerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SignUpView.id: (context) => const SignUpView(),
        LoginView.id: (context) => const LoginView(),
        HomeView.id: (context) => const HomeView(),
      },
      debugShowCheckedModeBanner: false,
      home: const SafeArea(
          child: Scaffold(
        body: LoginView(),
      )),
    );
  }
}
