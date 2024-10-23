import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          inputDecorationTheme:
              const InputDecorationTheme(border: OutlineInputBorder())),
      child: SignInScreen(
        actions: [
          AuthStateChangeAction<SignedIn>((context, state) {
            Navigator.pushReplacementNamed(context, '/home');
          }),
          AuthStateChangeAction<UserCreated>((context, state) {
            Navigator.pushReplacementNamed(context, '/home');
          }),
        ],
      ),
    );
  }
}
