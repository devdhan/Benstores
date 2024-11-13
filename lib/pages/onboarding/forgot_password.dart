import 'package:benstore/components/my_buttton.dart';
import 'package:benstore/pages/onboarding/password_reset.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  void passwordReset(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const PasswordReset()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/left.png',
                  height: 24,
                  width: 24,
                ),
              ),
            ),
            const Text(
              'Forgot Password',
              style: TextStyle(fontFamily: 'CircularStd', fontSize: 35),
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Enter Email Address',
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
              onTap: () => passwordReset(context),
              buttonText: 'Continue',
              buttonColor: const Color(0xFFE75336),
              buttonTextColor: const Color(0xFFFFFFFF),
              fontSize: 16,
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
