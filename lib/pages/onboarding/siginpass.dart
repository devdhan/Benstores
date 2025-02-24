import 'package:benstore/components/my_buttton.dart';
import 'package:benstore/pages/homepages/dashboard.dart';
import 'package:benstore/pages/onboarding/forgot_password.dart';
import 'package:flutter/material.dart';

class Siginpass extends StatelessWidget {
  const Siginpass({super.key});

  void dashboard(BuildContext context) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => Dashboard()), (route) => false);
  }

  void forgotPass(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ForgotPassword()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 25.0, vertical: 100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign in',
                style: TextStyle(fontFamily: 'CircularStd', fontSize: 35),
              ),
              const SizedBox(height: 30),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      color: Color(0x87272727),
                      fontFamily: 'CircularStd',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  filled: true,
                  fillColor: Color(0x39B3B3B3),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              MyButton(
                onTap: () => dashboard(context),
                buttonText: 'Continue',
                buttonColor: const Color(0xFFE75336),
                buttonTextColor: const Color(0xFFFFFFFF),
                fontSize: 16,
                fontFamily: 'CircularStd',
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xCE000000),
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () => forgotPass(context),
                    child: const Text(
                      'Reset',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xCE000000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
