import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:messapp/auth/admin_signup.dart';
import 'package:messapp/auth/user_signup.dart';

import '../auth/login.dart';

class SignUpSelectionScreen extends StatefulWidget {
  const SignUpSelectionScreen({super.key});

  @override
  State<SignUpSelectionScreen> createState() => _SignUpSelectionScreenState();
}

class _SignUpSelectionScreenState extends State<SignUpSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            'Welcome to Mess App',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const Text(
            'Sign Up as ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const UserSignupScreen();
              }));
            },
            child: const Text('User'),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const AdminSignUpScreen();
              }));
            },
            child: const Text('Admin'),
          ),
        ],
      ),
    ));
  }
}
